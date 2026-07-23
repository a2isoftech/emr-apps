import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';
import 'package:emr_one_crm/screens/pricing-admin/adjust_price_button.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_filter_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/guide_price_list_datasource.dart';
import 'package:emr_one_crm/screens/pricing-admin/guide_price_list_search.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_template_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_template_datasource.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_templates_search.dart';
import 'package:emr_one_crm/services/gpl_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class GuidePriceListsScreen extends StatefulWidget with FullExtent {
  const GuidePriceListsScreen({
    required this.gplService,
    required this.filterController,
    required this.settingsController,
    required this.gplSearchDataSource,
    required this.tagTemplateDataSource,
    super.key,
  });

  final GplService gplService;
  final GplFilterController filterController;
  final SettingsController settingsController;
  final GplSearchDataSource gplSearchDataSource;
  final TagTemplateDatasource tagTemplateDataSource;
  @override
  State<GuidePriceListsScreen> createState() => _GuidePriceListsScreenState();
}

class _GuidePriceListsScreenState extends State<GuidePriceListsScreen>
    with TickerProviderStateMixin {
  late final GplScreenController controller;
  late final TagTemplateController tagController;
  late final EmrGridController<GuidePriceListLine> gridController;
  late final EmrQueryLayoutController<GuidePriceListLine> querylayoutController;
  late final EmrGridController<TagTemplates> tagGridController;
  late final EmrQueryLayoutController<TagTemplates> tagQueryLayoutController;
  late Uom localUom;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    // As we need to call dispose on GplScreenController, we have to create it
    // here rather then inject it. We call refreshGridData straight away so any
    // results in the grid aren't lost when resizing the window.
    tagQueryLayoutController = EmrQueryLayoutController<TagTemplates>(
      dataSource: widget.tagTemplateDataSource,
    );
    tagController = TagTemplateController(
      queryLayoutController: tagQueryLayoutController,
      gplService: widget.gplService,
    );
    _tabController = TabController(length: 2, vsync: this);
    querylayoutController = EmrQueryLayoutController<GuidePriceListLine>(
      filterController: widget.filterController,
      dataSource: widget.gplSearchDataSource,
    );
    gridController = EmrGridController<GuidePriceListLine>(
      data: querylayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: querylayoutController.dataSource.loading,
    );
    controller = GplScreenController(
      widget.filterController,
      widget.gplService,
      gridController,
      querylayoutController,
    );

    tagGridController = EmrGridController(
      data: tagQueryLayoutController.dataSource.data,
      showLoader: tagQueryLayoutController.dataSource.loading,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final windowType = getWindowType(context);
    final textColor = Theme.of(context).colorScheme.onSecondary;
    return (windowType >= EmrOneConstants.appDefaultSizeBreakpoint)
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              title: Text(
                context.l10n.adminPricing,
                style: TextStyle(color: textColor),
              ),
              automaticallyImplyLeading: false,
              actions: [
                Visibility(
                  visible: _tabController.index == 0,
                  child: AdjustPriceButton(
                    gridController: gridController,
                    controller: controller,
                    textColor: textColor,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.picture_as_pdf_outlined),
                  color: textColor,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.send_outlined),
                  color: textColor,
                  onPressed: () {},
                ),
              ],
              bottom: TabBar(
                controller: _tabController,
                labelColor: textColor,
                unselectedLabelColor: textColor,
                tabs: [
                  Tab(
                    text: context.l10n.guidePriceList,
                  ),
                  Tab(
                    text: context.l10n.tagTemplates,
                  ),
                ],
                onTap: (value) => {
                  setState(
                    () {
                      _tabController.index = value;
                    },
                  ),
                },
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                GuidePriceListSearch(
                  controller: controller,
                  queryLayoutController: querylayoutController,
                  gridController: gridController,
                ),
                TagTemplatesSearch(
                  controller: tagController,
                  queryLayoutController: tagQueryLayoutController,
                  gridController: tagGridController,
                  settingsController: widget.settingsController,
                ),
              ],
            ),
          )
        : PlaceHolderScreen(
            title: context.l10n.notAvailable,
            subtitle: '${context.l10n.pleaseUseALargerScreenToAccessThisPage}.',
          );
  }
}
