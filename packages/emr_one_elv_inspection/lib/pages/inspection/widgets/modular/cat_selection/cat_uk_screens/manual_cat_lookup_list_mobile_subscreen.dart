import 'dart:async';
import 'dart:convert';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
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
  late ValueNotifier<List<TechCatSearchModel>> catNotifier;
  late final InspectionScreenController controller;
  late final ScrollController _scrollController;
  final searchTextController = TextEditingController();

  late final String mediaApi;

  // Pagination bookkeeping
  String? _endCursor;
  bool _hasNext = true;
  final int _pageSize = 20;

  @override
  void initState() {
    super.initState();

    catNotifier = ValueNotifier([]);
    controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );

    final appConfig = Provider.of<AppConfig>(context, listen: false);
    mediaApi = appConfig.mediaApi;

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
      await refreshManualCats();
    });
  }

  Future<void> _onSearchChanged(String? query) async {
    _endCursor = null;
    _hasNext = true;
    catNotifier.value = [];

    await _loadNextPage(search: query);
  }

  Future<void> refreshManualCats() async {
    _endCursor = null;
    _hasNext = true;
    catNotifier.value = [];

    await _loadNextPage(search: searchTextController.text);
  }

  Future<void> _loadNextPage({String? search}) async {
    //if (controller.state.loadingNotifier.value) return;
    if (!_hasNext && _endCursor != null) return;

    final page = await controller.getManualCatsPage(
      first: _pageSize,
      after: _endCursor,
      search: search ?? searchTextController.text,
    );

    if (page == null) return;

    final existingIds = catNotifier.value.map((e) => e.id).toSet();
    final newItems = page.data
        .where((x) => !existingIds.contains(x.id))
        .toList();

    catNotifier.value = [...catNotifier.value, ...newItems];

    _endCursor = page.pageInfo.endCursor;
    _hasNext = page.pageInfo.hasNextPage;
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
                    onRefresh: refreshManualCats,
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
                  onRefresh: refreshManualCats,
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
                              child: CatLookupCardMobileSubScreen(
                                title:
                                    '''${context.l10n.serialNumber}: ${cat.serialNumber}''',
                                currencyShort: getCurrencySymbol(
                                  TerritoryCodes.uk,
                                ),
                                image: null,
                                disableSealNumber: true,
                                selectedCat: cat,
                                cats: catNotifier,
                                isManual: true,
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
              onPressed: controller.isSealNumberValid.value
                  ? () async {
                      await doSaveCat(isImageRequired: widget.isImageRequired);
                    }
                  : null,
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

  @override
  void dispose() {
    _scrollController.dispose();
    try {
      catNotifier.dispose();
    } catch (_) {}
    super.dispose();
  }

  // Utility functions (optional)
  String stringToBase64(String input) {
    final bytes = utf8.encode(input);
    return base64Encode(bytes);
  }

  String base64ToString(String base64) {
    final bytes = base64Decode(base64);
    return utf8.decode(bytes);
  }

  Future<void> doSaveCat({required bool isImageRequired}) async {
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

    if (selectedCat.catalyticFill == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.pleaseSelectCatalyticFill,
      );
      return;
    }

    if (selectedCat.catClassification == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.pleaseSelectCatalyticClassification,
      );
      return;
    }

    if (selectedCat.sealNo == null) {
      // hide busy dialog
      context.pop();

      await EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.invalidSealNumber,
      );
      return;
    }

    XFile? file;

    if (isImageRequired) {
      file = await ImagePicker().pickImage(source: ImageSource.camera);

      // If user cancels image picking, don't proceed
      if (file == null && mounted) {
        // hide busy dialog
        context.pop();
        return;
      }
    }

    // Only call selectUKCats
    //if either image is not required,
    // or it's required and captured
    if (!isImageRequired || file != null) {
      controller.state.loadingNotifier.value = true;
      final error = await controller.selectUKCats(
        selectedCat: selectedCat,
        imageBaseUrl: mediaApi,
        file: file,
      );
      controller.state.loadingNotifier.value = false;
      if (error.isNotEmpty) {
        if (error.contains('SEAL_NUMBER_IS_USED')) {
          controller.isSealNumberUsed.value = true;
        }

        // hide busy dialog
        if (mounted) context.pop();

        return;
      }
    }

    if (mounted && Navigator.of(context).canPop()) {
      // hide busy dialog
      context.pop();

      // hide the manual dialog
      context.pop();
    }
  }
}
