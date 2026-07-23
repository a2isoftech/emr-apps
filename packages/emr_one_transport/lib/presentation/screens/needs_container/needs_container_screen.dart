import 'dart:async';

import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/needs_container/needs_container_controller.dart';
import 'package:emr_one_transport/data/controllers/needs_container/needs_container_filter_controller.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/needs_container/container_without_asset_number.dart';
import 'package:emr_one_transport/data/models/needs_container/save_container_asset_number.dart';
import 'package:emr_one_transport/data/models/needs_container/sort_option.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/presentation/screens/needs_container/asset_review_skip.dart';
import 'package:emr_one_transport/presentation/screens/needs_container/asset_review_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NeedsContainerScreen extends StatefulWidget {
  const NeedsContainerScreen({super.key});

  @override
  State<NeedsContainerScreen> createState() => _NeedsContainerScreenState();
}

class _NeedsContainerScreenState extends State<NeedsContainerScreen> {
  final GlobalKey<FormState> _needsContainerFormKey = GlobalKey<FormState>();
  late Future<void> _loadJobsFuture;
  List<ContainerWithoutAssetNumber> data = <ContainerWithoutAssetNumber>[];
  late NeedsContainerController controller;
  late NeedsContainerFilterController filterController;
  Set<int> savedIndexes = <int>{};
  int currentIndex = 0;
  int totalRows = 0;
  int pageNumber = 1;
  int pageSize = 25;
  bool _isSaving = false;
  String selectedSortOrder = StringConstants.desc;
  List<SortOption> _buildSortOptions(BuildContext context) => [
    SortOption(display: context.l10n.oldestFirst, value: StringConstants.asc),
    SortOption(display: context.l10n.newestFirst, value: StringConstants.desc),
  ];
  final printLabelFormKey = GlobalKey<FormState>();
  final skipReviewFormKey = GlobalKey<FormState>();
  bool get isCurrentItemSaved => savedIndexes.contains(currentIndex);
  late final AsyncValidator<String> _assetNumberAsyncValidator;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<NeedsContainerController>(context, listen: false);
    filterController = Provider.of<NeedsContainerFilterController>(
      context,
      listen: false,
    );
    filterController.initialize();
    filterController.filters.addListener(_onFilterChanged);
    _loadJobsFuture = getJobsWithoutAssetNumber(
      pageNumber,
      pageSize,
      selectedSortOrder,
    );
    _assetNumberAsyncValidator = AsyncValidator(
      context,
      binding: controller.printQrCodeAssetNumberValueNotifier,
      onChange: (formFieldKey, value) async {
        final containerExists = await controller.isAssetExists(value);
        if (!mounted) return AsyncValidatorResult(message: null);
        return AsyncValidatorResult(
          message: containerExists ? null : context.l10n.invalidAssetNumber,
        );
      },
    );
  }

  @override
  void dispose() {
    filterController.filters.removeListener(_onFilterChanged);
    _assetNumberAsyncValidator.dispose();
    super.dispose();
  }

  void _onFilterChanged() {
    _reloadFromFirstPage();
  }

  void back() {
    if (data.isEmpty || currentIndex <= 0) return;

    setState(() {
      currentIndex--;
      controller.assetNumberValueNotifier.value =
          data[currentIndex].assetNumber;
    });
  }

  Future<String?> save() async {
    if (data.isEmpty) return null;

    final currentItem = data[currentIndex];
    final savedAssetNumber = controller.assetNumberValueNotifier.value!
        .toUpperCase();

    final request = SaveContainerAssetNumber(
      currentItem.jobNumber,
      currentItem.containerGuid,
      savedAssetNumber,
    );

    final errorCode = await controller.saveAssetNumber(request);
    if (!mounted) return null;

    if (errorCode != null) {
      return errorCode;
    }

    setState(() {
      data[currentIndex].assetNumber = savedAssetNumber;
    });

    _markCurrentItemSavedAndMoveNext();
    return null;
  }

  Future<bool> skipReview(String? comments, ListDetails selectedReason) async {
    if (data.isEmpty) return false;

    final currentItem = data[currentIndex];

    if (selectedReason.code == null || selectedReason.description == null) {
      return false;
    }

    final result = await controller.skipReview(
      currentItem.jobNumber,
      currentItem.containerGuid,
      selectedReason.code!,
      selectedReason.description!,
      comments,
    );
    if (!mounted) return false;

    if (result) {
      _removeCurrentItemAndMoveNext();
    }

    return result;
  }

  void next() {
    if (data.isEmpty) {
      _loadNextPage();
      return;
    }

    if (currentIndex < data.length - 1) {
      setState(() {
        currentIndex++;
        controller.assetNumberValueNotifier.value =
            data[currentIndex].assetNumber;
      });
    } else {
      _loadNextPage();
    }
  }

  void _loadNextPage() {
    final nextPage = pageNumber + 1;

    if (((nextPage - 1) * pageSize) >= totalRows) {
      return;
    }

    setState(() {
      pageNumber = nextPage;
      currentIndex = 0;
      savedIndexes.clear();
      controller.assetNumberValueNotifier.value = '';
      _loadJobsFuture = getJobsWithoutAssetNumber(
        pageNumber,
        pageSize,
        selectedSortOrder,
      );
    });
  }

  void _reloadFromFirstPage() {
    setState(() {
      pageNumber = 1;
      currentIndex = 0;
      controller.assetNumberValueNotifier.value = '';
      _loadJobsFuture = getJobsWithoutAssetNumber(
        pageNumber,
        pageSize,
        selectedSortOrder,
      );
    });
  }

  void _removeCurrentItemAndMoveNext() {
    if (data.isEmpty) return;
    setState(() {
      data.removeAt(currentIndex);
      savedIndexes = savedIndexes
          .where((i) => i != currentIndex)
          .map((i) => i > currentIndex ? i - 1 : i)
          .toSet();
      if (totalRows > 0) {
        totalRows--;
      }
      if (data.isNotEmpty) {
        if (currentIndex >= data.length) {
          currentIndex = 0;
        }
        controller.assetNumberValueNotifier.value =
            data[currentIndex].assetNumber;
      } else {
        controller.assetNumberValueNotifier.value = '';
      }
    });
    if (data.isEmpty && totalRows > 0) {
      _loadNextPage();
    }
  }

  void _markCurrentItemSavedAndMoveNext() {
    final wasAlreadySaved = savedIndexes.contains(currentIndex);
    final isLastItemOnPage = currentIndex >= data.length - 1;

    setState(() {
      savedIndexes.add(currentIndex);

      if (!wasAlreadySaved && totalRows > 0) {
        totalRows--;
      }

      if (!isLastItemOnPage) {
        currentIndex++;
        controller.assetNumberValueNotifier.value =
            data[currentIndex].assetNumber;
      } else {
        controller.assetNumberValueNotifier.value = '';
      }
    });
    if (isLastItemOnPage) {
      final hasMorePages = (pageNumber * pageSize) < totalRows;
      if (hasMorePages) {
        _loadNextPage();
      } else {
        _reloadFromFirstPage();
      }
    }
  }

  void sortByDate(String sortOder) {
    selectedSortOrder = sortOder;
    _reloadFromFirstPage();
  }

  @override
  Widget build(BuildContext context) {
    final notificationController = context.read<EmrOneNotificationController>();
    return Form(
      key: _needsContainerFormKey,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: Insets.gutter,
              children: [
                Expanded(child: EmrFilter(controller: filterController)),
                Row(
                  spacing: Insets.gutter,
                  children: [
                    Text(
                      context.l10n.sortBy,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownMenu<String>(
                      initialSelection: selectedSortOrder,
                      onSelected: (String? newValue) {
                        if (newValue != null) {
                          sortByDate(newValue);
                        }
                      },
                      dropdownMenuEntries: _buildSortOptions(context)
                          .map<DropdownMenuEntry<String>>((SortOption option) {
                            return DropdownMenuEntry<String>(
                              value: option.value,
                              label: option.display,
                            );
                          })
                          .toList(),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.gutter,
                    vertical: Insets.gutter / 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: TransportAppColors.greyCardBg),
                  ),
                  child: Row(
                    children: [
                      Text(context.l10n.showSkippedContainers),
                      Transform.scale(
                        scale: 0.6,
                        child: Switch.adaptive(
                          value: controller
                              .showSkippedContainersValueNotifier
                              .value,
                          onChanged: (bool newValue) {
                            setState(() {
                              controller
                                      .showSkippedContainersValueNotifier
                                      .value =
                                  newValue;
                            });
                            _reloadFromFirstPage();
                            controller.assetNumberValueNotifier.value = '';
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                _buildInfoMenu(),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Expanded(
              child: FutureBuilder<void>(
                future: _loadJobsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: LoadingIndicator());
                  } else if (snapshot.hasError || data.isEmpty) {
                    return Center(child: Text(context.l10n.noDataFound));
                  }
                  return Column(
                    children: [
                      AssetImageReview(
                        images: data[currentIndex].images,
                        assetNumberNotifier:
                            controller.assetNumberValueNotifier,
                        jobNumber: data[currentIndex].jobNumber.toString(),
                        assetNumberReviewSkipDetail:
                            data[currentIndex].assetNumberReviewSkipDetail,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: Insets.gutter,
                            children: [
                              Container(
                                width: Insets.gutter * 3,
                                height: Insets.gutter * 3,
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.error.withAlpha(25),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.inventory_2_outlined,
                                    size: Constants.iconSizeL,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                              ),
                              Text(
                                '${context.l10n.containersLeftToUpdate}:'
                                ' $totalRows',
                                style: Theme.of(context).textTheme.labelLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              const SizedBox(width: 7),
                              FilledButton(
                                onPressed: currentIndex == 0 ? null : back,
                                child: Text(context.l10n.back),
                              ),
                              const SizedBox(width: 7),
                              if (controller.isSkippedContainerMode)
                                FilledButton(
                                  onPressed: next,
                                  child: Text(context.l10n.next),
                                )
                              else
                                FilledButton(
                                  onPressed: isCurrentItemSaved
                                      ? null
                                      : () async {
                                          final commonService = context
                                              .read<CommonService>();
                                          final selectedSkipReason =
                                              ValueNotifier<ListDetails?>(null);
                                          final skipCommentsNotifier =
                                              ValueNotifier<String?>(null);
                                          await EmrDialog.modal<void>(
                                            context,
                                            titleText: context.l10n.skip,
                                            builder: (context) {
                                              return Provider.value(
                                                value: commonService,
                                                child: AssetReviewSkip(
                                                  selectedReason:
                                                      selectedSkipReason,
                                                  formKey: skipReviewFormKey,
                                                  commentNotifier:
                                                      skipCommentsNotifier,
                                                ),
                                              );
                                            },
                                            acceptLabel: context.l10n.save,
                                            onAccept: () async {
                                              await onSkipConfirm(
                                                context,
                                                selectedSkipReason.value,
                                                skipCommentsNotifier.value,
                                                notificationController,
                                              );
                                            },
                                          );
                                        },
                                  child: Text(context.l10n.skip),
                                ),
                              const SizedBox(width: Insets.gutter / 2),
                              if (context.userHasPermission(
                                UserPermissions.needsContainerWrite,
                              ))
                                FilledButton(
                                  onPressed: _isSaving
                                      ? null
                                      : () async {
                                          final isValid =
                                              _needsContainerFormKey
                                                  .currentState
                                                  ?.validate() ??
                                              false;

                                          if (!isValid) {
                                            notificationController
                                                .showNotification(
                                                  EmrOneErrorNotification(
                                                    title: context.l10n.error,
                                                    description: context
                                                        .l10n
                                                        .fixValidationDisplay,
                                                  ),
                                                );
                                            return;
                                          }

                                          setState(() => _isSaving = true);

                                          try {
                                            final errorMessage = await save();

                                            if (!context.mounted) return;

                                            if (errorMessage != null &&
                                                errorMessage.isNotEmpty) {
                                              notificationController
                                                  .showNotification(
                                                    EmrOneErrorNotification(
                                                      title: context.l10n.error,
                                                      description: errorMessage,
                                                    ),
                                                  );
                                            }
                                          } finally {
                                            if (context.mounted) {
                                              setState(() => _isSaving = false);
                                            }
                                          }
                                        },
                                  style: EmrButtonStyles.cta(),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity: _isSaving ? 0 : 1,
                                        child: Text(
                                          context.l10n.saveAndGoToNextContainer,
                                        ),
                                      ),
                                      if (_isSaving)
                                        const SizedBox(
                                          height: 18,
                                          width: 18,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getJobsWithoutAssetNumber(
    int pageNumber,
    int pageSize,
    String sortOrder,
  ) async {
    final dateRange = filterController.getDateRange();
    final request = PagedFilterRequest(
      pageNumber,
      pageSize,
      sortBy: StringConstants.sortBy,
      sortOrder: sortOrder,
      filters: {
        StringConstants.startScheduleDateUtc: [
          dateRange[0].toUtc().toIso8601String(),
        ],
        StringConstants.endScheduleDateUtc: [
          dateRange[1].add(const Duration(days: 1)).toUtc().toIso8601String(),
        ],
        'onlyskipped': [controller.isSkippedContainerMode.toString()],
      },
    );
    final result = await controller.getJobsWithoutAssetNumber(request);

    data = result.containerList;
    totalRows = result.totalItems;
  }

  Widget _buildInfoMenu() {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<String>(
            child: Text(context.l10n.createContainer),
            onTap: () {
              final url = context.namedLocation(RoutingPathName.addContainer);
              NavigationHelper.openInNewTab(url);
            },
          ),
          PopupMenuItem<String>(
            child: Text(context.l10n.printContainerLabel),
            onTap: () async {
              await EmrDialog.modal<void>(
                context,
                titleText: context.l10n.printContainerLabel,
                builder: (context) {
                  return Form(
                    key: printLabelFormKey,
                    child: SizedBox(
                      height: 110,
                      width: 200,
                      child: EmrTextFormField<String?>(
                        key: _assetNumberAsyncValidator.formFieldKey,
                        binding: controller.printQrCodeAssetNumberValueNotifier,
                        labelText: context.l10n.assetNumberText,
                        hintText: context.l10n.assetNumberText,
                        validator: (value) => Validators.join([
                          Validators.required(value),
                          _assetNumberAsyncValidator.validator(value),
                        ]),
                      ),
                    ),
                  );
                },
                acceptLabel: context.l10n.print,
                onAccept: () async {
                  if (!(printLabelFormKey.currentState?.validate() ?? false)) {
                    return;
                  }
                  await controller.downloadQRCodes();
                  if (context.mounted) {
                    context.pop();
                  }
                },
              );
            },
          ),
        ];
      },
    );
  }

  Future<void> onSkipConfirm(
    BuildContext context,
    ListDetails? skipReason,
    String? comments,
    EmrOneNotificationController notificationController,
  ) async {
    if (!(skipReviewFormKey.currentState?.validate() ?? false)) {
      return;
    }

    final result = await skipReview(comments, skipReason!);

    if (!context.mounted) return;

    if (result) {
      context.pop();
    } else {
      notificationController.showNotification(
        EmrOneErrorNotification(
          title: context.l10n.error,
          description: context.l10n.errorAndTryAgainMsg,
        ),
      );
    }
  }
}
