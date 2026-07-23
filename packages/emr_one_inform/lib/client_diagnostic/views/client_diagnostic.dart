import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart' as conn;
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/client_diagnostic/controller/client_diagnostic_controller.dart';
import 'package:emr_one_inform/client_diagnostic/models/client_diagnostic_model.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/service/interfaces/iconnectivity_service.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/new_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

abstract class ClientDiagnosticView
    extends BasePage<IClientDiagnosticController> {
  ClientDiagnosticView({super.key});

  final scrollController = ScrollController();

  @override
  Widget? getActionButton(BuildContext context) => null;

  void onSearch() {
    controller.toggleSearchWindow();
  }

  @override
  String getTitle(BuildContext context) => 'Device Data';

  @override
  void initState(BuildContext context) {
    controller.loadJobs();
    _getTerritoryCode(context);
    connectivityStatus(context);
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: SingleChildScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Wrap(
          runSpacing: 10,
          children: [
            if (controller.isSearchWidgetVisible.value) ...[
              _addSearchWidget(),
              const SizedBox(height: 5),
            ],
            if (controller.isBusy || controller.isLoading) ...[
              Center(child: showSpinner()),
            ] else if (controller.jobs == null || controller.jobs!.isEmpty) ...[
              Center(child: showNoData('no data')),
            ] else ...[
              _addAutoFixButtons(context),
              _getjobsPanel(context),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _getTerritoryCode(BuildContext context) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final territory = await userRepo.getTerritory();
    await controller.setTerritoryCode(territory);
    setState(
      () {},
    );
  }

  Widget _getjobsPanel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _addJobList(context),
        ],
      ),
    );
  }

  Widget _addSearchWidget() => ValueListenableBuilder(
        valueListenable: controller.isSearchWidgetVisible,
        builder: (context, value, child) {
          return Visibility(
            visible: value,
            child: ValueListenableBuilder(
              valueListenable: controller.isSearchWidgetVisible,
              builder: (context, value, child) {
                return SearchWidget(
                  key: UniqueKey(),
                  searchOptions: [
                    DropdownSearchOption(
                      displayText: 'Job Type',
                      propertyName: 'jobType',
                      datasource: ['All', 'NotUploaded'],
                      isPinned: true,
                    ),
                    TypeaheadSearchOption(
                      displayText: 'WO/SI Number',
                      propertyName: 'workOrderId',
                      sourceCallback: controller.getWorkOrderIds,
                      datasource: null,
                    ),
                  ],
                  initialState: controller.searchState,
                  onStateChanged: (searchState) async {
                    controller.searchStateChanged(searchState);
                    await controller.loadJobs();
                  },
                );
              },
            ),
          );
        },
      );

  Widget _addJobList(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        showJobs(context),
      ],
    );
  }

  Widget showJobs(
    BuildContext context,
  );

  Future<void> onRefresh() async {
    await controller.loadJobs();
  }

  Widget jobCell({
    required ClientDiagnosticModel job,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: EmrColours.secondaryGrey),
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  if (job.workOrderId != null) ...[
                    Tooltip(
                      message: 'Preview',
                      child: IconButton(
                        onPressed: () => _onPreviewPressed(context, job, true),
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ],
                  const SizedBox(
                    width: 5,
                  ),
                  if (job.capturedMedia.isNotEmpty) ...[
                    Stack(
                      children: [
                        Center(
                          child: IconButton(
                            onPressed: () async {
                              await context.pushNamed(
                                FormsRoutingName.diagnosticMedia,
                                queryParams: {
                                  'workOrderId': job.workOrderId,
                                  'instanceId': job.instanceId,
                                },
                              );
                            },
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 20,
                              color: job.capturedMedia.isNotEmpty
                                  ? FormColors.buttonColorGreen
                                  : null,
                            ),
                          ),
                        ),
                        _addMediaCount(job),
                      ],
                    ),
                  ],
                  const Spacer(),
                  if (job.capturedMedia.any((x) => !x.isUploaded))
                    Tooltip(
                      message: 'Push media to server',
                      child: IconButton(
                        onPressed: () async {
                          if (!context.mounted) return;
                          await connectivityStatus(context).then((value) {
                            if (value == conn.ConnectivityResult.none) {
                              if (context.mounted) {
                                showMessageDialog(
                                  context: context,
                                  messageType: MessageType.error,
                                  message: 'you are not connected to internet',
                                );
                              }
                            } else {
                              controller
                                  .uploadOnlyMediaToServer(job.instanceId);
                            }
                          });
                        },
                        icon: const FaIcon(FontAwesomeIcons.cloudArrowUp),
                      ),
                    ),
                  const SizedBox(width: 10),
                  if (!job.isOnServer && job.isSubmitted) ...[
                    Tooltip(
                      message: 'Push to server',
                      child: IconButton(
                        onPressed: () async {
                          if (!context.mounted) return;
                          await connectivityStatus(context).then((value) {
                            if (value == conn.ConnectivityResult.none) {
                              if (context.mounted) {
                                showMessageDialog(
                                  context: context,
                                  messageType: MessageType.error,
                                  message: 'you are not connected to internet',
                                );
                              }
                            } else {
                              controller.push(job);
                            }
                          });
                        },
                        icon: const Icon(Icons.upload),
                      ),
                    ),
                  ],
                  const SizedBox(
                    width: 5,
                  ),
                  if (job.isSubmitted &&
                      job.isOnServer &&
                      !job.isUploading) ...[
                    Tooltip(
                      message: 'Remove',
                      child: IconButton(
                        onPressed: () async {
                          await showMessageDialog(
                            context: context,
                            messageType: MessageType.success,
                            message: controller.successMessage,
                          ).then(
                            (value) => controller.delete(job),
                          );
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ],
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    job.workOrderId ?? '-',
                    style: FormAppTextStyles.listviewTitleTextColor,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Server Status: '),
                  Text(
                    job.isOnServer && job.isSubmitted
                        ? ClientDiagnosticStatus.Uploaded
                        : ClientDiagnosticStatus.NotUploaded,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: _getStatusColor(
                        job.isOnServer && job.isSubmitted
                            ? ClientDiagnosticStatus.Uploaded
                            : ClientDiagnosticStatus.NotUploaded,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Device Status: '),
                  Text(
                    job.isSubmitted
                        ? ClientDiagnosticStatus.Submitted
                        : ClientDiagnosticStatus.NotSubmitted,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: _getStatusColor(
                        job.isSubmitted
                            ? ClientDiagnosticStatus.Submitted
                            : ClientDiagnosticStatus.NotSubmitted,
                      ),
                    ),
                  ),
                ],
              ),
              if (job.isUploading) ...[
                Row(
                  children: [
                    Text(
                      'Uploading to server!',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color:
                            _getStatusColor(ClientDiagnosticStatus.Uploading),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String? status) {
    switch (status) {
      case 'Uploaded':
      case 'Submitted':
        return FormAppColors.information;
      case 'NotSubmitted':
      case 'NotUploaded':
        return FormAppColors.success;
      case 'Uploading':
        return FormAppColors.error;
      default:
        return FormAppColors.success;
    }
  }

  Widget _addMediaCount(ClientDiagnosticModel job) {
    return Align(
      child: job.capturedMedia.isNotEmpty
          ? Container(
              width: 50 * .4,
              height: 50 * .4,
              decoration: BoxDecoration(
                color: FormColors.success,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${job.capturedMedia.length}',
                  style: TextStyle(color: FormColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : Container(),
    );
  }

  Future<conn.ConnectivityResult> connectivityStatus(
    BuildContext context,
  ) async {
    final connectivityService =
        Provider.of<IConnectivityService>(context, listen: false);
    return connectivityService.checkConnectivity();
  }

  Future<void> _onPreviewPressed(
    BuildContext context,
    ClientDiagnosticModel instance,
    bool isPreview,
  ) async {
    await context.pushNamed(
      FormsRoutingName.jobPage,
      queryParams: {
        'scheduledItemId': instance.scheduledItemId,
        'instanceId': instance.instanceId,
        'jobData': instance.workOrderId == null
            ? null
            : jsonEncode(
                InstanceJobData(
                  assetCode: instance.assetCode!,
                  depotNo: instance.depotNo!,
                  jobType: instance.jobType ?? '',
                  territoryCode: controller.territoryCode ?? '',
                  workOrderId: instance.workOrderId!,
                  workOrderDescription: '',
                ),
              ),
        'isPreview': isPreview.toString(),
      },
    );
  }

  Widget _addAutoFixButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () async {
              await showMessageDialog(
                context: context,
                messageType: MessageType.success,
                message: controller.successMessage,
              ).then(
                (value) => controller.autoFix(),
              );
            },
            child: const Text('Auto Fix'),
          ),
          const SizedBox(
            width: 5,
          ),
          ElevatedButton(
            onPressed: () async {
              await controller.autoDeleteCompleted().then(
                (value) {
                  if (context.mounted) {
                    showMessageDialog(
                      context: context,
                      messageType: MessageType.success,
                      message: 'Removed Jobs: \n ${value.join(', ')}',
                    );
                  }
                },
              );
            },
            child: const Text('Remove Completed'),
          ),
        ],
      ),
    );
  }

  SnackBar appSnackBar(String text) {
    return SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.done_outline_rounded,
            size: 20,
            color: Colors.white,
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
      backgroundColor: FormColors.success,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );
  }
}
