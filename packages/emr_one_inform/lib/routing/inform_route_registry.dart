import 'dart:convert';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/allocate_user/controllers/allocate_user_controller.dart';
import 'package:emr_one_inform/allocate_user/controllers/interfaces/i_allocate_user_controller.dart';
import 'package:emr_one_inform/allocate_user/services/allocate_user_service.dart';
import 'package:emr_one_inform/allocate_user/services/interfaces/i_allocate_user_service.dart';
import 'package:emr_one_inform/allocate_user/views/allocate_user_to_jobs_native.dart';
import 'package:emr_one_inform/allocate_user/views/allocate_user_to_jobs_web.dart';
import 'package:emr_one_inform/audit/controller/audit_controller.dart';
import 'package:emr_one_inform/audit/services/audit_service.dart';
import 'package:emr_one_inform/audit/views/audit_view.dart';
import 'package:emr_one_inform/client_diagnostic/controller/client_diagnostic_controller.dart';
import 'package:emr_one_inform/client_diagnostic/controller/client_diagnostic_media_controller.dart';
import 'package:emr_one_inform/client_diagnostic/views/client_diagnostic_native.dart';
import 'package:emr_one_inform/client_diagnostic/views/client_diagnostic_web.dart';
import 'package:emr_one_inform/client_diagnostic/views/media_view.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/company_preference/controllers/company_preference_controller.dart';
import 'package:emr_one_inform/company_preference/services/company_preference_service.dart';
import 'package:emr_one_inform/company_preference/views/company_preference_web.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/controllers/create_task_controller.dart';
import 'package:emr_one_inform/create_task/models/clone_task_parameter.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/create_task/views/create_task_native.dart';
import 'package:emr_one_inform/create_task/views/create_task_web.dart';
import 'package:emr_one_inform/create_template/controller/create_template_controller.dart';
import 'package:emr_one_inform/create_template/services/create_template_service.dart';
import 'package:emr_one_inform/create_template/views/create_template_native.dart';
import 'package:emr_one_inform/create_template/views/create_template_new/create_template_new.dart';
import 'package:emr_one_inform/create_template/views/create_template_web.dart';
import 'package:emr_one_inform/diagnostic/controller/diagnostic_controller.dart';
import 'package:emr_one_inform/diagnostic/services/diagnostice_service.dart';
import 'package:emr_one_inform/diagnostic/views/diagnostic_view.dart';
import 'package:emr_one_inform/help/controllers/help_pdf_controller.dart';
import 'package:emr_one_inform/help/views/help_pdf_viewer.dart';
import 'package:emr_one_inform/import_template/controllers/import_template_controller.dart';
import 'package:emr_one_inform/import_template/services/import_template_service.dart';
import 'package:emr_one_inform/import_template/views/import_template_view.dart';
import 'package:emr_one_inform/job/completed_jobs/controllers/completed_jobs_controller.dart';
import 'package:emr_one_inform/job/completed_jobs/controllers/pdf_viewer_controller.dart';
import 'package:emr_one_inform/job/completed_jobs/service/completed_job_service.dart';
import 'package:emr_one_inform/job/completed_jobs/service/completed_job_service_web.dart';
import 'package:emr_one_inform/job/completed_jobs/service/icompleted_job_service.dart';
import 'package:emr_one_inform/job/completed_jobs/views/completed_jobs_native.dart';
import 'package:emr_one_inform/job/completed_jobs/views/completed_jobs_web.dart';
import 'package:emr_one_inform/job/completed_jobs/views/pdf_viewer.dart';
import 'package:emr_one_inform/media_search/controllers/media_items_controller.dart';
import 'package:emr_one_inform/media_search/controllers/media_search_controller.dart';
import 'package:emr_one_inform/media_search/services/media_items_service.dart';
import 'package:emr_one_inform/media_search/views/media_items_view.dart';
import 'package:emr_one_inform/media_search/views/media_search_view.dart';
import 'package:emr_one_inform/menu/controllers/menu_controller.dart' as menu;
import 'package:emr_one_inform/menu/services/menu_service.dart';
import 'package:emr_one_inform/menu/views/menu_native.dart';
import 'package:emr_one_inform/menu/views/menu_web.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/my_calendar.dart/controllers/my_calendar_controller.dart';
import 'package:emr_one_inform/my_calendar.dart/services/my_calendar_service.dart';
import 'package:emr_one_inform/my_calendar.dart/views/my_calendar_native.dart';
import 'package:emr_one_inform/my_calendar.dart/views/my_calendar_web.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/repository/shared_preferences/preference_repository.dart';
import 'package:emr_one_inform/scheduler/controllers/create_edit_scheduler_controller.dart';
import 'package:emr_one_inform/scheduler/controllers/scheduler_controller.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';
import 'package:emr_one_inform/scheduler/services/scheduler_service.dart';
import 'package:emr_one_inform/scheduler/views/create_edit_scheduler_native.dart';
import 'package:emr_one_inform/scheduler/views/create_edit_scheduler_web.dart';
import 'package:emr_one_inform/scheduler/views/scheduler_native.dart';
import 'package:emr_one_inform/scheduler/views/scheduler_web.dart';
import 'package:emr_one_inform/screens/add_client/add_client_controller.dart';
import 'package:emr_one_inform/screens/add_client/add_client_native.dart';
import 'package:emr_one_inform/screens/add_client/add_client_web.dart';
import 'package:emr_one_inform/screens/client/client_controller.dart';
import 'package:emr_one_inform/screens/client/client_native.dart';
import 'package:emr_one_inform/screens/client/client_web.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_controller.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_native.dart';
import 'package:emr_one_inform/screens/create_work_request/create_work_request_web.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_controller.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_native.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_web.dart';
import 'package:emr_one_inform/screens/form_lists/form_list_controller.dart';
import 'package:emr_one_inform/screens/form_lists/form_list_native.dart';
import 'package:emr_one_inform/screens/form_lists/form_list_web.dart';
import 'package:emr_one_inform/screens/job_page/job_page_controller.dart';
import 'package:emr_one_inform/screens/job_page/job_page_native.dart';
import 'package:emr_one_inform/screens/job_page/job_page_web.dart';
import 'package:emr_one_inform/screens/job_search/job_search_controller.dart';
import 'package:emr_one_inform/screens/job_search/job_search_native.dart';
import 'package:emr_one_inform/screens/job_search/job_search_web.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_controller.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_native.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_web.dart';
import 'package:emr_one_inform/screens/preview/preview_template_controller.dart';
import 'package:emr_one_inform/screens/preview/preview_template_native.dart';
import 'package:emr_one_inform/screens/preview/preview_template_web.dart';
import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_controller.dart';
import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_native.dart';
import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_web.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_controller.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_native.dart';
import 'package:emr_one_inform/screens/select_yard/select_yard_web.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_controller.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_native.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_web.dart';
import 'package:emr_one_inform/screens/team/team_controller.dart';
import 'package:emr_one_inform/screens/team/team_native.dart';
import 'package:emr_one_inform/screens/team/team_web.dart';
import 'package:emr_one_inform/screens/template_library/template_library_controller.dart';
import 'package:emr_one_inform/screens/template_library/template_library_native.dart';
import 'package:emr_one_inform/screens/template_library/template_library_web.dart';
import 'package:emr_one_inform/screens/view_work_request/view_work_request_controller.dart';
import 'package:emr_one_inform/screens/view_work_request/view_work_request_native.dart';
import 'package:emr_one_inform/screens/view_work_request/view_work_request_web.dart';
import 'package:emr_one_inform/service/form_services.dart';
import 'package:emr_one_inform/service/implementations/firebase_auth_provider.dart';
import 'package:emr_one_inform/services/background_processor.dart';
import 'package:emr_one_inform/services/client_service.dart';
import 'package:emr_one_inform/services/common_service.dart';
import 'package:emr_one_inform/services/create_work_request_service.dart';
import 'package:emr_one_inform/services/form_list_service.dart';
import 'package:emr_one_inform/services/inform_resilient_http_client.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:emr_one_inform/services/interfaces/ijob_search_service.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:emr_one_inform/services/job_search_service.dart';
import 'package:emr_one_inform/services/landing_page_service.dart';
import 'package:emr_one_inform/services/scanned_asset_service.dart';
import 'package:emr_one_inform/services/select_yard_service.dart';
import 'package:emr_one_inform/services/team_service.dart';
import 'package:emr_one_inform/services/template_library_service.dart';
import 'package:emr_one_inform/services/view_work_request_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class WidgetResource {
  WidgetResource({required this.pageKeyHashCode, required this.widget});

  int pageKeyHashCode;
  Widget widget;
}

String? selectedJobState;

class InformRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    FormsRoutingName.inForms: (context, state) {
      FormAppColors.initialize(context);
      final appConfig = Provider.of<AppConfig>(context);
      return (appConfig.isWeb
              ? LandingPageWeb()
              : getWidget(
                  FormsRoutingName.inForms,
                  state.pageKey.hashCode,
                  () => LandingPageNative(
                    key: GlobalKey(),
                  ),
                ))
          .withMultiProvider(providers);
    },
    FormsRoutingName.scannedAsset: (context, state) {
      final assetCode = state.queryParams['assetCode'];
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.scannedAsset,
        state.pageKey.hashCode,
        () => config.isWeb
            ? ScannedAssetWeb(key: GlobalKey(), assetCode: assetCode)
            : ScannedAssetNative(key: GlobalKey(), assetCode: assetCode),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.yardSelection: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.yardSelection,
        state.pageKey.hashCode,
        () => config.isWeb
            ? SelectYardWeb(key: GlobalKey())
            : SelectYardNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.createWorkOrder: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final cloneTaskParameter = (state.extra is CloneTaskParameter?)
          ? state.extra as CloneTaskParameter?
          : null;
      final selectedDate =
          (state.extra is DateTime?) ? state.extra as DateTime? : null;
      final isEditValue = state.queryParams['isEdit'];
      var isEdit = false;
      if (isEditValue != null && isEditValue.isNotEmpty) {
        isEdit = bool.parse(isEditValue);
      }
      return getWidget(
        FormsRoutingName.createWorkOrder,
        state.pageKey.hashCode,
        () => config.isWeb
            ? CreateTaskWeb(
                key: GlobalKey(),
                cloneTaskParameter: cloneTaskParameter,
                isEdit: isEdit,
                selectedDate: selectedDate,
              )
            : CreateTaskNative(
                key: GlobalKey(),
                cloneTaskParameter: cloneTaskParameter,
                isEdit: isEdit,
                selectedDate: selectedDate,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.createAdhocTemplate: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final editTemplateId = state.queryParams['editTemplateId'];
      final isClone =
          bool.tryParse(state.queryParams['isClone'] ?? '') ?? false;
      return getWidget(
        FormsRoutingName.createAdhocTemplate,
        state.pageKey.hashCode,
        () => config.isWeb
            ? CreateTemplateWeb(
                key: GlobalKey(),
                editTemplateId: editTemplateId,
                isClone: isClone,
              )
            : CreateTemplateNative(
                key: GlobalKey(),
                editTemplateId: editTemplateId,
                isClone: isClone,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.createAdhocTemplateNew: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final editTemplateId = state.queryParams['editTemplateId'];
      final isClone =
          bool.tryParse(state.queryParams['isClone'] ?? '') ?? false;
      return getWidget(
        FormsRoutingName.createAdhocTemplateNew,
        state.pageKey.hashCode,
        () => config.isWeb
            ? CreateTemplateNew(
                key: GlobalKey(),
                editTemplateId: editTemplateId,
                isClone: isClone,
              )
            : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.createWorkOrderRequest: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.createWorkOrderRequest,
        state.pageKey.hashCode,
        () => config.isWeb
            ? CreateWorkRequestWeb(key: GlobalKey())
            : CreateWorkRequestNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingPath.completedJobs: (context, state) {
      final assetCode = state.queryParams['assetCode'];
      final startDate = state.queryParams['startDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['startDate']!).toString(),
            );
      final endDate = state.queryParams['endDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['endDate']!).toString(),
            );
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.completedJobs,
        state.pageKey.hashCode,
        () => config.isWeb
            ? CompletedJobsWeb(
                key: GlobalKey(),
                filterForUser:
                    bool.tryParse(state.queryParams['filterForUser']!),
                startDate: startDate != null
                    ? DateTime.tryParse(startDate.toString())
                    : null,
                endDate: endDate != null
                    ? DateTime.tryParse(endDate.toString())
                    : null,
                assetCode: assetCode,
              )
            : CompletedJobsNative(
                key: GlobalKey(),
                filterForUser:
                    bool.tryParse(state.queryParams['filterForUser']!),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.viewWorkRequest: (context, state) {
      final config = Provider.of<AppConfig>(context);
      final assetCode = state.queryParams['assetCode'];
      final startDate = state.queryParams['startDate'] == null ||
              state.queryParams['startDate'] == ''
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['startDate']!).toString(),
            );
      final endDate = state.queryParams['endDate'] == null ||
              state.queryParams['endDate'] == ''
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['endDate']!).toString(),
            );
      return getWidget(
        FormsRoutingName.viewWorkRequest,
        state.pageKey.hashCode,
        () => config.isWeb
            ? ViewWorkRequestWeb(
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              )
            : ViewWorkRequestNative(
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.jobsAssignedToMe: (context, state) {
      final jobState = state.queryParams['jobState'] ?? selectedJobState;
      selectedJobState = jobState;
      final assetCode = state.queryParams['assetCode'];
      final startDate = state.queryParams['startDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['startDate']!).toString(),
            );
      final endDate = state.queryParams['endDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['endDate']!).toString(),
            );
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.jobsAssignedToYard,
        state.pageKey.hashCode,
        () => config.isWeb
            ? JobSearchWeb(
                filterForUser: true,
                jobState: jobState!,
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              )
            : JobSearchNative(
                filterForUser: true,
                jobState: jobState!,
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.jobPage: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final scheduledItemId = state.queryParams['scheduledItemId']!;
      final instanceId = state.queryParams['instanceId'];
      final templateId = state.queryParams['templateId'];
      final jobData = state.queryParams['jobData'] == null
          ? null
          : InstanceJobData.fromJson(
              jsonDecode(state.queryParams['jobData']!) as Map<String, dynamic>,
            );
      final isPreview = state.queryParams['isPreview'] == 'true';
      final isDigitalSignatureRequired =
          state.queryParams['isDigitalSignatureRequired'] == 'true';
      final emailsToNotify = state.queryParams['emailsToNotify'] == null ||
              state.queryParams['emailsToNotify']!.isEmpty
          ? null
          : state.queryParams['emailsToNotify']!.split(',');

      return getWidget(
        FormsRoutingName.jobPage,
        state.pageKey.hashCode,
        () => config.isWeb
            ? JobPageWeb(
                key: GlobalKey(),
                scheduledItemId: scheduledItemId,
                instanceId: instanceId,
                templateId: templateId,
                jobData: jobData,
                isPreview: isPreview,
                isDigitalSignatureRequired: isDigitalSignatureRequired,
                isAppBarRequired: true,
                emailsToNotify: emailsToNotify,
              )
            : JobPageNative(
                key: GlobalKey(),
                scheduledItemId: scheduledItemId,
                instanceId: instanceId,
                templateId: templateId,
                jobData: jobData,
                isPreview: isPreview,
                isDigitalSignatureRequired: isDigitalSignatureRequired,
                isAppBarRequired: false,
                emailsToNotify: emailsToNotify,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.jobsAssignedToYard: (context, state) {
      final jobState = state.queryParams['jobState'];
      final assetCode = state.queryParams['assetCode'];
      final startDate = state.queryParams['startDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['startDate']!).toString(),
            );
      final endDate = state.queryParams['endDate'] == null
          ? null
          : DateTime.parse(
              jsonDecode(state.queryParams['endDate']!).toString(),
            );
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.jobsAssignedToYard,
        state.pageKey.hashCode,
        () => config.isWeb
            ? JobSearchWeb(
                filterForUser: false,
                jobState: jobState!,
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              )
            : JobSearchNative(
                filterForUser: false,
                jobState: jobState!,
                key: GlobalKey(),
                startDate: DateTime.tryParse(startDate.toString()),
                endDate: DateTime.tryParse(endDate.toString()),
                assetCode: assetCode,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.questionMediaCapture: (context, state) {
      return (state.extra! as Widget).withMultiProvider(providers);
    },
    FormsRoutingName.mediaCapture: (context, state) {
      return (state.extra! as Widget).withMultiProvider(providers);
    },
    FormsRoutingName.previewTemplate: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final templateJson = state.extra == null ? '' : state.extra! as String;
      final isDigitalSignatureRequiredForJob = bool.parse(
        state.queryParams['isDigitalSignatureRequiredForJob']!,
      );
      final isDigitalSignatureRequiredForTemplate = bool.parse(
        state.queryParams['isDigitalSignatureRequiredForTemplate']!,
      );
      return (config.isWeb
              ? PreviewTemplateWeb(
                  templateJson: templateJson,
                  isDigitalSignatureRequiredForJob:
                      isDigitalSignatureRequiredForJob,
                  isDigitalSignatureRequiredForTemplate:
                      isDigitalSignatureRequiredForTemplate,
                )
              : PreviewTemplateNative(
                  templateJson: templateJson,
                  isDigitalSignatureRequiredForJob:
                      isDigitalSignatureRequiredForJob,
                  isDigitalSignatureRequiredForTemplate:
                      isDigitalSignatureRequiredForTemplate,
                ))
          .withMultiProvider(providers);
    },
    FormsRoutingName.completedJobsPdf: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final workOrderId = state.params['workOrderId'];
      final companyCode = state.params['companyCode'];
      return PdfViewerPage(
        workOrderId: workOrderId!,
        companyCode: companyCode!,
        isWeb: config.isWeb,
        key: GlobalKey(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.templateLibrary: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final returnSelectedTemplate = bool.tryParse(
            state.queryParams['returnSelectedTemplate']!,
          ) ??
          false;
      return getWidget(
        FormsRoutingName.templateLibrary,
        state.pageKey.hashCode,
        () => config.isWeb
            ? TemplateLibraryWeb(
                key: GlobalKey(),
                returnSelectedTemplate: returnSelectedTemplate,
              )
            : TemplateLibraryNative(
                key: GlobalKey(),
                returnSelectedTemplate: returnSelectedTemplate,
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.clients: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.clients,
        state.pageKey.hashCode,
        () => config.isWeb
            ? ClientWeb(key: GlobalKey())
            : ClientNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.addClient: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final clientId = state.queryParams['clientId'] == null
          ? -1
          : int.parse(state.queryParams['clientId']!);
      return getWidget(
        FormsRoutingName.addClient,
        state.pageKey.hashCode,
        () => config.isWeb
            ? AddClientWeb(key: GlobalKey(), clientId: clientId)
            : AddClientNative(key: GlobalKey(), clientId: clientId),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.lists: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.lists,
        state.pageKey.hashCode,
        () => config.isWeb
            ? FormListWeb(key: GlobalKey())
            : FormListNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.companyPreference: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.companyPreference,
        state.pageKey.hashCode,
        () =>
            config.isWeb ? CompanyPreferenceWeb(key: GlobalKey()) : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.addList: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final listId = state.queryParams['listId'] == null
          ? -1
          : int.parse(state.queryParams['listId']!);
      return getWidget(
        FormsRoutingName.addList,
        state.pageKey.hashCode,
        () => config.isWeb
            ? AddFormListWeb(key: GlobalKey(), listId: listId)
            : AddFormListNative(key: GlobalKey(), listId: listId),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.allocateUserToWorkOrder: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.allocateUserToWorkOrder,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? AllocateUserToJobsWeb(key: GlobalKey())
            : AllocateUserToJobsNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.scheduler: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.scheduler,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? SchedulerWeb(key: GlobalKey())
            : SchedulerNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.editScheduler: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      final schedule = (state.extra is ScheduleRecord)
          ? state.extra as ScheduleRecord?
          : null;
      final selectedTemplate =
          (state.extra is FormsTemplate) ? state.extra as FormsTemplate? : null;
      return getWidget(
        FormsRoutingName.editScheduler,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? CreateEditSchedulerWeb(
                scheduleToEdit: schedule,
                selectedTemplate: selectedTemplate,
                key: GlobalKey(),
              )
            : CreateEditSchedulerNative(
                scheduleToEdit: schedule,
                selectedTemplate: selectedTemplate,
                key: GlobalKey(),
              ),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.importTemplate: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.importTemplate,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? ImportTemplateView(key: GlobalKey())
            : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.diagnostic: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.diagnostic,
        state.pageKey.hashCode,
        () => appConfig.isWeb ? DiagnosticView(key: GlobalKey()) : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.clientDiagnostic: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.clientDiagnostic,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? ClientDiagnosticWeb(key: GlobalKey())
            : ClientDiagnosticNative(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.diagnosticMedia: (context, state) {
      final instanceId = state.queryParams['instanceId']!;
      final workOrderId = state.queryParams['workOrderId']!;
      return DiagnosticMediaView(
        workRequestId: workOrderId,
        instanceId: instanceId,
        key: GlobalKey(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.audit: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      final instanceId = state.queryParams['instanceId']!;
      final workOrderId = state.queryParams['workOrderId']!;
      return getWidget(
        FormsRoutingName.audit,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? AuditView(
                key: GlobalKey(),
                instanceId: instanceId,
                workOrderId: workOrderId,
              )
            : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.menu: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.menu,
        state.pageKey.hashCode,
        () => appConfig.isWeb
            ? MenuWeb(key: GlobalKey())
            : MenuNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.mediaSearch: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      return getWidget(
        FormsRoutingName.mediaSearch,
        state.pageKey.hashCode,
        () => appConfig.isWeb ? MediaSearchView(key: GlobalKey()) : Container(),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.mediaItems: (context, state) {
      final appConfig = Provider.of<AppConfig>(context);
      final workRequestId = state.params['workRequestId']!;
      final cmpCode = state.params['cmpCode']!;
      return (appConfig.isWeb
              ? MediaItemsView(
                  workRequestId: workRequestId,
                  cmpCode: cmpCode,
                  key: GlobalKey(),
                )
              : Container())
          .withMultiProvider(providers);
    },
    FormsRoutingName.teams: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.teams,
        state.pageKey.hashCode,
        () => config.isWeb
            ? TeamWeb(key: GlobalKey())
            : TeamNative(key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.addTeam: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      final teamId = state.queryParams['teamId'] == null ||
              state.queryParams['teamId']!.isEmpty
          ? null
          : state.queryParams['teamId'];
      return getWidget(
        FormsRoutingName.addTeam,
        state.pageKey.hashCode,
        () => config.isWeb
            ? AddTeamWeb(key: GlobalKey(), teamId: teamId)
            : AddTeamNative(key: GlobalKey(), teamId: teamId),
      ).withMultiProvider(providers);
    },
    FormsRoutingName.myCalendar: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.myCalendar,
        state.pageKey.hashCode,
        () => config.isWeb
            ? MyCalendarWeb(config: config, key: GlobalKey())
            : MyCalendarNative(config: config, key: GlobalKey()),
      ).withMultiProvider(providers);
    },
    FormsRoutingPath.help: (context, state) {
      final config = Provider.of<AppConfig>(context, listen: false);
      return getWidget(
        FormsRoutingName.help,
        state.pageKey.hashCode,
        () => HelpPdfViewerPage(isWeb: config.isWeb, key: GlobalKey()),
      ).withMultiProvider(providers);
    },
  };

  static Map<String, WidgetResource> widgetMap = <String, WidgetResource>{};

  static Widget getWidget(
    String name,
    int pageKeyHashCode,
    Widget Function() defaultWidget,
  ) {
    final widgetresource = widgetMap[name];
    if (widgetresource == null ||
        widgetresource.pageKeyHashCode != pageKeyHashCode) {
      widgetMap[name] = WidgetResource(
        pageKeyHashCode: pageKeyHashCode,
        widget: defaultWidget(),
      );
    }

    return widgetMap[name]!.widget;
  }

  static List<EORoute> informMenuItems = [
    EORoute(
      /// This is your module's top level route
      FontAwesomeIcons.filePen.data,
      (_) => FormsRoutingDisplayNames.inForms,
      section: kInformSection,
      path: FormsRoutingPath.inForms,
      selectedIcon: FontAwesomeIcons.filePen.data,
      name: FormsRoutingName.inForms,
      widgetBuilder: widgetBuilders[FormsRoutingName.inForms]!,
      children: [
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.scannedAsset,
          section: kInformSection,
          path: FormsRoutingPath.scannedAsset,
          name: FormsRoutingName.scannedAsset,
          widgetBuilder: widgetBuilders[FormsRoutingName.scannedAsset]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.yardSelection,
          section: kInformSection,
          path: FormsRoutingPath.yardSelection,
          name: FormsRoutingName.yardSelection,
          widgetBuilder: widgetBuilders[FormsRoutingName.yardSelection]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.createWorkOrder,
          section: kInformSection,
          path: FormsRoutingPath.createWorkOrder,
          name: FormsRoutingName.createWorkOrder,
          widgetBuilder: widgetBuilders[FormsRoutingName.createWorkOrder]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => FormsRoutingDisplayNames.createAdhocTemplate,
              section: kInformSection,
              path: FormsRoutingPath.createAdhocTemplate,
              name: FormsRoutingName.createAdhocTemplate,
              widgetBuilder:
                  widgetBuilders[FormsRoutingName.createAdhocTemplate]!,
              isAllowed: _isAllowed,
            ),
            EORoute(
              Icons.logo_dev_outlined,
              (_) => FormsRoutingDisplayNames.createAdhocTemplateNew,
              section: kInformSection,
              path: FormsRoutingPath.createAdhocTemplateNew,
              name: FormsRoutingName.createAdhocTemplateNew,
              widgetBuilder:
                  widgetBuilders[FormsRoutingName.createAdhocTemplateNew]!,
              isAllowed: _isAllowed,
            ),
          ],
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.createWorkOrderRequest,
          section: kInformSection,
          path: FormsRoutingPath.createWorkOrderRequest,
          name: FormsRoutingName.createWorkOrderRequest,
          widgetBuilder:
              widgetBuilders[FormsRoutingName.createWorkOrderRequest]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.completedJobs,
          section: kInformSection,
          path: FormsRoutingPath.completedJobs,
          name: FormsRoutingPath.completedJobs,
          widgetBuilder: widgetBuilders[FormsRoutingPath.completedJobs]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.viewWorkRequest,
          name: FormsRoutingName.viewWorkRequest,
          widgetBuilder: widgetBuilders[FormsRoutingName.viewWorkRequest]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.jobsAssigedToMe,
          section: kInformSection,
          path: FormsRoutingPath.jobsAssigedToMe,
          name: FormsRoutingName.jobsAssignedToMe,
          widgetBuilder: widgetBuilders[FormsRoutingName.jobsAssignedToMe]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => FormsRoutingDisplayNames.jobPage,
              section: kInformSection,
              path: FormsRoutingPath.jobPage,
              name: FormsRoutingName.jobPage,
              widgetBuilder: widgetBuilders[FormsRoutingName.jobPage]!,
              isAllowed: _isAllowed,
            ),
          ],
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.jobsAssignedToYard,
          section: kInformSection,
          path: FormsRoutingPath.jobsAssignedToYard,
          name: FormsRoutingName.jobsAssignedToYard,
          widgetBuilder: widgetBuilders[FormsRoutingName.jobsAssignedToYard]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.questionMediaCapture,
          section: kInformSection,
          path: FormsRoutingPath.questionMediaCapture,
          name: FormsRoutingName.questionMediaCapture,
          widgetBuilder: widgetBuilders[FormsRoutingName.questionMediaCapture]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.mediaCapture,
          section: kInformSection,
          path: FormsRoutingPath.mediaCapture,
          name: FormsRoutingName.mediaCapture,
          widgetBuilder: widgetBuilders[FormsRoutingName.mediaCapture]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.previewTemplate,
          section: kInformSection,
          path: FormsRoutingPath.previewTemplate,
          name: FormsRoutingName.previewTemplate,
          widgetBuilder: widgetBuilders[FormsRoutingName.previewTemplate]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.completedJobsPdf,
          name: FormsRoutingName.completedJobsPdf,
          widgetBuilder: widgetBuilders[FormsRoutingName.completedJobsPdf]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.templateLibrary,
          name: FormsRoutingName.templateLibrary,
          widgetBuilder: widgetBuilders[FormsRoutingName.templateLibrary]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.clients,
          name: FormsRoutingName.clients,
          widgetBuilder: widgetBuilders[FormsRoutingName.clients]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.addClient,
          section: kInformSection,
          path: FormsRoutingPath.addClient,
          name: FormsRoutingName.addClient,
          widgetBuilder: widgetBuilders[FormsRoutingName.addClient]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.lists,
          name: FormsRoutingName.lists,
          widgetBuilder: widgetBuilders[FormsRoutingName.lists]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.companyPreference,
          section: kInformSection,
          path: FormsRoutingPath.companyPreference,
          name: FormsRoutingName.companyPreference,
          widgetBuilder: widgetBuilders[FormsRoutingName.companyPreference]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.addList,
          section: kInformSection,
          path: FormsRoutingPath.addList,
          name: FormsRoutingName.addList,
          widgetBuilder: widgetBuilders[FormsRoutingName.addList]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.allocateUserToWorkOrder,
          section: kInformSection,
          path: FormsRoutingPath.allocateUserToWorkOrder,
          name: FormsRoutingName.allocateUserToWorkOrder,
          widgetBuilder:
              widgetBuilders[FormsRoutingName.allocateUserToWorkOrder]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.scheduler,
          section: kInformSection,
          path: FormsRoutingPath.scheduler,
          name: FormsRoutingName.scheduler,
          widgetBuilder: widgetBuilders[FormsRoutingName.scheduler]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => FormsRoutingDisplayNames.editScheduler,
              section: kInformSection,
              path: FormsRoutingPath.editScheduler,
              name: FormsRoutingName.editScheduler,
              widgetBuilder: widgetBuilders[FormsRoutingName.editScheduler]!,
              isAllowed: _isAllowed,
            ),
          ],
          isAllowed: _isAllowed,
        ),
        // Import Template
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.importTemplate,
          section: kInformSection,
          path: FormsRoutingPath.importTemplate,
          name: FormsRoutingName.importTemplate,
          widgetBuilder: widgetBuilders[FormsRoutingName.importTemplate]!,
          isAllowed: (context, route) => _hasPermission(
            context,
            route,
            PermissionConstants.informImportTemplate,
          ),
        ),
        //diagnostic
        EORoute(
          Icons.monitor_heart_outlined,
          (_) => FormsRoutingDisplayNames.diagnostic,
          section: kInformSection,
          path: FormsRoutingPath.diagnostic,
          name: FormsRoutingName.diagnostic,
          widgetBuilder: widgetBuilders[FormsRoutingName.diagnostic]!,
          isAllowed: (context, route) => _hasPermission(
            context,
            route,
            PermissionConstants.informDiagnostic,
          ),
        ),
        //client diagnostic
        EORoute(
          Icons.monitor_heart_outlined,
          (_) => FormsRoutingDisplayNames.clientDiagnostic,
          section: kInformSection,
          path: FormsRoutingPath.clientDiagnostic,
          name: FormsRoutingName.clientDiagnostic,
          widgetBuilder: widgetBuilders[FormsRoutingName.clientDiagnostic]!,
          isAllowed: (context, route) => _hasPermission(
            context,
            route,
            PermissionConstants.informClientDiagnostic,
          ),
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => FormsRoutingDisplayNames.diagnosticmedia,
              section: kInformSection,
              path: FormsRoutingPath.diagnsoticMedia,
              name: FormsRoutingName.diagnosticMedia,
              widgetBuilder: widgetBuilders[FormsRoutingName.diagnosticMedia]!,
              isAllowed: (context, route) => _hasPermission(
                context,
                route,
                PermissionConstants.informDiagnosticMedia,
              ),
            ),
          ],
        ),
        //media for client diagnostic

        //audit log
        EORoute(
          Icons.monitor_heart_outlined,
          (_) => FormsRoutingDisplayNames.audit,
          section: kInformSection,
          path: FormsRoutingPath.audit,
          name: FormsRoutingName.audit,
          widgetBuilder: widgetBuilders[FormsRoutingName.audit]!,
          isAllowed: (context, route) =>
              _hasPermission(context, route, PermissionConstants.informAudit),
        ),
        // Admin Menu
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.menu,
          section: kInformSection,
          path: FormsRoutingPath.menu,
          name: FormsRoutingName.menu,
          widgetBuilder: widgetBuilders[FormsRoutingName.menu]!,
          isAllowed: _isAllowed,
        ),
        // Media Search
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.mediaSearch,
          section: kInformSection,
          path: FormsRoutingPath.mediaSearch,
          name: FormsRoutingName.mediaSearch,
          widgetBuilder: widgetBuilders[FormsRoutingName.mediaSearch]!,
          isAllowed: _isAllowed,
        ),
        // Media Item
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.mediaItems,
          section: kInformSection,
          path: FormsRoutingPath.mediaItems,
          name: FormsRoutingName.mediaItems,
          widgetBuilder: widgetBuilders[FormsRoutingName.mediaItems]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => kInformSection,
          section: kInformSection,
          path: FormsRoutingPath.teams,
          name: FormsRoutingName.teams,
          widgetBuilder: widgetBuilders[FormsRoutingName.teams]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.addTeam,
          section: kInformSection,
          path: FormsRoutingPath.addTeam,
          name: FormsRoutingName.addTeam,
          widgetBuilder: widgetBuilders[FormsRoutingName.addTeam]!,
          isAllowed: _isAllowed,
        ),
        EORoute(
          Icons.logo_dev_outlined,
          (_) => FormsRoutingDisplayNames.myCalendar,
          section: kInformSection,
          path: FormsRoutingPath.myCalendar,
          name: FormsRoutingName.myCalendar,
          widgetBuilder: widgetBuilders[FormsRoutingName.myCalendar]!,
          isAllowed: _isAllowed,
        ),
        //Help Section
        EORoute(
          Icons.help,
          (_) => FormsRoutingDisplayNames.help,
          section: kHelpSection,
          path: FormsRoutingPath.help,
          name: FormsRoutingPath.help,
          widgetBuilder: widgetBuilders[FormsRoutingPath.help]!,
        ),
      ],
      isAllowed: _isAllowed,
    ),
  ];

  static bool _isAllowed(BuildContext context, EORoute route) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo.hasPermission(PermissionConstants.inform);
  }

  static bool _hasPermission(
    BuildContext context,
    EORoute route,
    String permissionName,
  ) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return _isAllowed(context, route) &&
        userInfoService.userInfo.hasPermission(permissionName);
  }

  static String kInformSection = 'Inform';

  static String kHelpSection = 'Help';

  static FormsEngine? formsEngine;

  static List<SingleChildWidget> providers = [
    Provider<ResilientHttpClient>(
      create: (context) {
        final config = Provider.of<AppConfig>(context, listen: false);
        return InformResilientHttpClient().getClient(config);
      },
    ),
    Provider<IUserPreferencesRepository>.value(
      value: UserPreferencesRepository(),
    ),
    Provider<ICommonService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return CommonService(httpClient: httpClient);
      },
    ),
    Provider<ILandingPageService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return LandingPageService(
          httpClient: httpClient,
        );
      },
    ),
    Provider<FormsEngine>(
      create: (context) {
        if (formsEngine != null) return formsEngine!;
        final appConfig = Provider.of<AppConfig>(context, listen: false);
        return formsEngine = FormsEngine.fromConfig(
          FormConfiguration(
            userName: UserInfoService.instance!.userInfo.name,
            userUuid: UserInfoService.instance!.userInfo.id,
            formsApiUrl: appConfig.informBaseUrl,
            authProvider: FirebaseAuthorizationProvider(),
            log: (name, params) => InformLogger.logEvent(name, params: params),
            appUploadAttemptInterval: appConfig.formsEngineUploadTimer,
          ),
        );
      },
    ),
    Provider<IBackgroundProcessor>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return BackgroundProcessor(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<LandingPageController>(
      create: (context) {
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final service =
            Provider.of<ILandingPageService>(context, listen: false);

        final formsEngine = Provider.of<FormsEngine>(context, listen: false);
        return LandingPageController(
          landingPageService: service,
          userPreferencesRepository: userPreferencesRepository,
          formsEngine: formsEngine,
        );
      },
    ),
    Provider<ICompletedJobService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        final appConfig = Provider.of<AppConfig>(context, listen: false);
        if (appConfig.isWeb) {
          return CompletedJobsServiceWeb(
            httpClient: httpClient,
          );
        }
        return CompletedJobsService(
          httpClient: httpClient,
        );
      },
    ),
    Provider<ICreateTaskService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return CreateTaskService(httpClient: httpClient);
      },
    ),
    Provider<IJobSearchService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return JobSearchService(
          httpClient: httpClient,
        );
      },
    ),
    Provider<SelectYardService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return SelectYardService(httpClient: httpClient);
      },
    ),
    ListenableProvider<CompletedJobsController>(
      create: (context) {
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(
          context,
          listen: false,
        );
        final completedJobService =
            Provider.of<ICompletedJobService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        final jobSearchService =
            Provider.of<IJobSearchService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        final yardService =
            Provider.of<SelectYardService>(context, listen: false);
        return CompletedJobsController(
          userPreferencesRepository: userPreferencesRepository,
          completedJobService: completedJobService,
          createTaskService: createTaskService,
          landingPageService: landingPageService,
          jobSearchService: jobSearchService,
          commonService: commonService,
          yardService: yardService,
        );
      },
    ),
    ListenableProvider<PdfViewerPageController>(
      create: (context) {
        final completedJobService =
            Provider.of<ICompletedJobService>(context, listen: false);
        return PdfViewerPageController(
          completedJobService: completedJobService,
        );
      },
    ),
    ListenableProvider<HelpPdfController>(
      create: (context) {
        return HelpPdfController();
      },
    ),
    Provider<IAllocateUserService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return AllocateUserService(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<IAllocateUserController>(
      create: (context) {
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(
          context,
          listen: false,
        );
        final service =
            Provider.of<IAllocateUserService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return AllocateUserController(
          service: service,
          userPreferencesRepository: userPreferencesRepository,
          landingPageService: landingPageService,
          commonService: commonService,
        );
      },
    ),
    Provider<IViewWorkRequestService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return ViewWorkRequestService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ViewWorkRequestController>(
      create: (context) {
        final viewWorkRequestService =
            Provider.of<IViewWorkRequestService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        return ViewWorkRequestController(
          viewWorkRequestService: viewWorkRequestService,
          userPreferencesRepository: userPreferencesRepository,
        );
      },
    ),
    ListenableProvider<SelectYardController>(
      create: (context) {
        final selectYardService =
            Provider.of<SelectYardService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        return SelectYardController(
          selectYardService: selectYardService,
          userPreferencesRepository: userPreferencesRepository,
          landingPageService: landingPageService,
        );
      },
    ),
    ListenableProvider<IJobSearchController>(
      create: (context) {
        final jobSearchService =
            Provider.of<IJobSearchService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        final yardService =
            Provider.of<SelectYardService>(context, listen: false);
        return JobSearchController(
          jobSearchService: jobSearchService,
          userPreferencesRepository: userPreferencesRepository,
          landingPageService: landingPageService,
          createTaskService: createTaskService,
          commonService: commonService,
          yardService: yardService,
        );
      },
    ),
    Provider<ICacheService>.value(value: CacheService()),
    Provider<IConnectivityService>.value(
      value: ConnectivityService(),
    ),
    Provider<TemplateLibraryService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return TemplateLibraryService(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<TemplateLibraryController>(
      create: (context) {
        final templateLibraryService =
            Provider.of<TemplateLibraryService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return TemplateLibraryController(
          templateLibraryService: templateLibraryService,
          createTaskService: createTaskService,
          commonService: commonService,
        );
      },
    ),
    Provider<ClientService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return ClientService(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<ClientController>(
      create: (context) {
        final clientService =
            Provider.of<ClientService>(context, listen: false);
        return ClientController(
          clientService: clientService,
        );
      },
    ),
    ListenableProvider<AddClientController>(
      create: (context) {
        final clientService =
            Provider.of<ClientService>(context, listen: false);
        return AddClientController(
          clientService: clientService,
        );
      },
    ),
    Provider<FormListService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return FormListService(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<FormListController>(
      create: (context) {
        final listService =
            Provider.of<FormListService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return FormListController(
          listService: listService,
          commonService: commonService,
        );
      },
    ),
    ListenableProvider<AddFormListController>(
      create: (context) {
        final listService =
            Provider.of<FormListService>(context, listen: false);
        return AddFormListController(
          listService: listService,
        );
      },
    ),
    ListenableProvider<PreviewTemplateController>.value(
      value: PreviewTemplateController(),
    ),
    Provider<CreateWorkRequestService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return CreateWorkRequestService(httpClient: httpClient);
      },
    ),
    ListenableProvider<CreateWorkRequestController>(
      create: (context) {
        final createWorkRequestService =
            Provider.of<CreateWorkRequestService>(context, listen: false);
        return CreateWorkRequestController(
          createWorkRequestService: createWorkRequestService,
        );
      },
    ),
    ListenableProvider<CreateTaskController>(
      create: (context) {
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        final formListService =
            Provider.of<FormListService>(context, listen: false);
        return CreateTaskController(
          createTaskService: createTaskService,
          landingPageService: landingPageService,
          formListService: formListService,
        );
      },
    ),
    Provider<ICreateTemplateService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return CreateTemplateService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ICreateTemplateController>(
      create: (context) {
        final createTemplateService =
            Provider.of<ICreateTemplateService>(context, listen: false);
        final templateLibraryService =
            Provider.of<TemplateLibraryService>(context, listen: false);
        return CreateTemplateController(
          createTemplateService: createTemplateService,
          templateLibraryService: templateLibraryService,
        );
      },
    ),
    Provider<IDiagnosticService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return DiagnsoticService(httpClient: httpClient);
      },
    ),
    ListenableProvider<IDiagnosticController>(
      create: (context) {
        final service = Provider.of<IDiagnosticService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return DiagnosticController(
          diagnosticService: service,
          userPreferencesRepository: userPreferencesRepository,
          commonService: commonService,
        );
      },
    ),
    ListenableProvider<IClientDiagnosticController>(
      create: (context) {
        final cleanUpService =
            Provider.of<IBackgroundProcessor>(context, listen: false);
        return ClientDiagnosticController(
          backgroundCleanUpProcessor: cleanUpService,
        );
      },
    ),
    ListenableProvider<DiagnosticMediaController>(
      create: (context) {
        return DiagnosticMediaController();
      },
    ),
    Provider<IAuditService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return AuditService(httpClient: httpClient);
      },
    ),
    ListenableProvider<IAuditController>(
      create: (context) {
        final service = Provider.of<IAuditService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return AuditController(
          auditService: service,
          userPreferencesRepository: userPreferencesRepository,
          commonService: commonService,
        );
      },
    ),
    Provider<ImportTemplateService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return ImportTemplateService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ImportTemplateController>(
      create: (context) {
        final service =
            Provider.of<ImportTemplateService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final templateLibraryService =
            Provider.of<TemplateLibraryService>(context, listen: false);

        return ImportTemplateController(
          service: service,
          createTaskService: createTaskService,
          templateLibraryService: templateLibraryService,
        );
      },
    ),
    Provider<MediaItemsService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return MediaItemsService(httpClient: httpClient);
      },
    ),
    ListenableProvider<MediaItemsController>(
      create: (context) {
        final service = Provider.of<MediaItemsService>(context, listen: false);
        return MediaItemsController(service: service);
      },
    ),
    ListenableProvider<MediaSearchController>(
      create: (context) {
        return MediaSearchController();
      },
    ),
    ListenableProvider<JobPageController>(
      create: (context) {
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        return JobPageController(
          landingPageService: landingPageService,
          userPreferencesRepository: userPreferencesRepository,
        );
      },
    ),
    Provider<ScannedAssetService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return ScannedAssetService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ScannedAssetController>(
      create: (context) {
        final scannedAssetService =
            Provider.of<ScannedAssetService>(context, listen: false);
        return ScannedAssetController(
          service: scannedAssetService,
        );
      },
    ),
    Provider<SchedulerService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return SchedulerService(httpClient: httpClient);
      },
    ),
    ListenableProvider<SchedulerController>(
      create: (context) {
        final scannedAssetService =
            Provider.of<SchedulerService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        return SchedulerController(
          service: scannedAssetService,
          createTaskService: createTaskService,
        );
      },
    ),
    Provider<MenuService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return MenuService(httpClient: httpClient);
      },
    ),
    ListenableProvider<menu.MenuController>(
      create: (context) {
        final adminMenuService =
            Provider.of<MenuService>(context, listen: false);
        return menu.MenuController(service: adminMenuService);
      },
    ),
    ListenableProvider<CreateEditSchedulerController>(
      create: (context) {
        final scannedAssetService =
            Provider.of<SchedulerService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        final selectYardService =
            Provider.of<SelectYardService>(context, listen: false);
        final userPreferencesRepository =
            Provider.of<IUserPreferencesRepository>(context, listen: false);
        return CreateEditSchedulerController(
          service: scannedAssetService,
          createTaskService: createTaskService,
          selectYardService: selectYardService,
          userPreferencesRepository: userPreferencesRepository,
        );
      },
    ),
    Provider<ICompanyPreferenceService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return CompanyPreferenceService(httpClient: httpClient);
      },
    ),
    ListenableProvider<ICompanyPreferenceController>(
      create: (context) {
        final service =
            Provider.of<ICompanyPreferenceService>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        return CompanyPreferenceController(
          service: service,
          landingPageService: landingPageService,
        );
      },
    ),
    Provider<TeamService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return TeamService(
          httpClient: httpClient,
        );
      },
    ),
    ListenableProvider<TeamController>(
      create: (context) {
        final teamService = Provider.of<TeamService>(context, listen: false);
        final commonService =
            Provider.of<ICommonService>(context, listen: false);
        return TeamController(
          teamService: teamService,
          commonService: commonService,
        );
      },
    ),
    Provider<IMyCalendarService>(
      create: (context) {
        final httpClient =
            Provider.of<ResilientHttpClient>(context, listen: false);
        return MyCalendarService(httpClient: httpClient);
      },
    ),
    ListenableProvider<IMyCalenderController>(
      create: (context) {
        final service = Provider.of<IMyCalendarService>(context, listen: false);
        final jobSearchService =
            Provider.of<IJobSearchService>(context, listen: false);
        final landingPageService =
            Provider.of<ILandingPageService>(context, listen: false);
        final createTaskService =
            Provider.of<ICreateTaskService>(context, listen: false);
        return MyCalenderController(
          service: service,
          jobSearchService: jobSearchService,
          createTaskService: createTaskService,
          landingPageService: landingPageService,
        );
      },
    ),
    ListenableProvider<AddTeamController>(
      create: (context) {
        final teamService = Provider.of<TeamService>(context, listen: false);
        return AddTeamController(
          teamService: teamService,
        );
      },
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(informMenuItems);

    return registry;
  }
}
