import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_text_form_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_uk_screens/manual_cat_lookup_card_mobile_subscreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ManualCatLookupListMobileSubScreen extends StatefulWidget {
  const ManualCatLookupListMobileSubScreen({
    this.isImageRequired = false,
    super.key,
  });

  final bool isImageRequired;

  @override
  State<ManualCatLookupListMobileSubScreen> createState() =>
      _ManualCatLookupListMobileSubScreenState();
}

class _ManualCatLookupListMobileSubScreenState
    extends State<ManualCatLookupListMobileSubScreen> {
  final searchTextController = TextEditingController();
  late final InspectionController controller;
  late ValueNotifier<List<TechemetManualCat>> catNotifier;
  late final ScrollController _scrollController;

  String? _endCursor;
  bool _hasNext = true;
  final int _pageSize = 20;

  @override
  void initState() {
    super.initState();

    catNotifier = ValueNotifier([]);
    controller = Provider.of<InspectionController>(context, listen: false);

    _scrollController = ScrollController()
      ..addListener(() async {
        if (!_hasNext) return;
        if (controller.state.loadingNotifier.value) return;

        if (!_scrollController.hasClients) return;
        final maxScroll = _scrollController.position.maxScrollExtent;
        final current = _scrollController.position.pixels;
        const threshold = 200.0;
        if (maxScroll - current <= threshold) {
          await _loadNextPage(search: searchTextController.text);
        }
      });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _refreshManualCats();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InspectionTextForm(
          txtController: searchTextController,
          header: context.l10n.search,
          placeholder: context.l10n.search,
          onFieldSubmitted: (value) async {
            await _onSearchChanged(value);
          },
          onClearClicked: () async {
            await _onSearchChanged('');
          },
        ),
        Expanded(
          child: ValueListenableBuilder<bool>(
            valueListenable: controller.state.loadingNotifier,
            builder: (context, loading, child) {
              return Watch((_) {
                if (catNotifier.value.isEmpty && loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (catNotifier.value.isEmpty && !loading) {
                  return RefreshIndicator(
                    onRefresh: _refreshManualCats,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        const SizedBox(height: 200),
                        Center(child: Text(context.l10n.noCATAvailableMessage)),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: _refreshManualCats,
                  child: ValueListenableBuilder(
                    valueListenable: catNotifier,
                    builder: (context, list, child) {
                      return ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: list.length + (_hasNext ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index < list.length) {
                            final cat = list[index];
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: Insets.gutter,
                              ),
                              child: ManualCatLookupCardMobileSubScreen(
                                catalyticConverter: cat,
                                currencyCode: controller.activeTerritory
                                    .currencyCode(),
                                onCatSelectionChanged: () {
                                  for (final item in list) {
                                    item.isSelected.value = false;
                                  }
                                },
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24),
                              child: Center(
                                child: controller.state.loadingNotifier.value
                                    ? const CircularProgressIndicator()
                                    : const SizedBox.shrink(),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                );
              });
            },
          ),
        ),
        Watch((ctx) {
          return SizedBox(
            width: double.maxFinite,
            child: FilledButton(
              onPressed: () async {
                await _doSaveCat(isImageRequired: widget.isImageRequired);
              },
              child: Text(
                widget.isImageRequired
                    ? context.l10n.takePhotoAndSave
                    : context.l10n.save,
              ),
            ),
          );
        }),
      ],
    );
  }

  Future<void> _onSearchChanged(String? query) async {
    _endCursor = null;
    _hasNext = true;
    catNotifier.value = [];

    await _loadNextPage(search: query);
  }

  Future<void> _loadNextPage({String? search}) async {
    if (controller.state.loadingNotifier.value) return;
    if (!_hasNext && _endCursor != null) return;

    controller.state.loadingNotifier.value = true;

    final page = await controller.service.manualCatsSearch(
      yardCode: controller.yardCode,
      first: _pageSize,
      after: _endCursor,
      filter: '*${search ?? searchTextController.text}*',
    );

    if (page == null) {
      controller.state.loadingNotifier.value = false;
      return;
    }

    final existingIds = catNotifier.value.map((e) => e.id).toSet();
    final newItems = page.data
        .where((x) => !existingIds.contains(x.id))
        .toList();

    catNotifier.value = [...catNotifier.value, ...newItems];

    _endCursor = page.pageInfo.endCursor;
    _hasNext = page.pageInfo.hasNextPage;
    controller.state.loadingNotifier.value = false;
  }

  Future<void> _refreshManualCats() async {
    _endCursor = null;
    _hasNext = true;
    catNotifier.value = [];

    await _loadNextPage(search: searchTextController.text);
  }

  Future<void> _doSaveCat({required bool isImageRequired}) async {
    unawaited(EmrDialog.busy(context, titleText: context.l10n.inProgress));

    final selectedCat = catNotifier.value
        .where((x) => x.isSelected.value)
        .firstOrNull;

    if (selectedCat == null) {
      if (context.mounted) {
        // hide busy dialog
        context.pop();

        await EmrModal.showMessageBar(
          context,
          context.l10n.pleaseSelectCAT,
          messageType: MessageBarTypes.error,
        );
      }
      return;
    }

    XFile? file;

    if (isImageRequired) {
      file = await ImagePicker().pickImage(source: ImageSource.camera);

      if (file == null && mounted) {
        context.pop();
        return;
      }
    }

    controller.state.loadingNotifier.value = true;
    final errorMessage = await controller.addCatalyticConverter(
      selectedCat.classification,
      selectedCat.partLocation,
      techemetCatId: selectedCat.id,
      file: file,
    );
    controller.state.loadingNotifier.value = false;

    if (errorMessage.isNotEmpty && errorMessage.contains(selectedCat.sealNo)) {
      controller.state.isSealNumberUsed.value = true;
    }

    if (mounted && Navigator.of(context).canPop()) {
      context.pop();
    }

    if (errorMessage.isEmpty && mounted && Navigator.of(context).canPop()) {
      context.pop();
    }
  }
}
