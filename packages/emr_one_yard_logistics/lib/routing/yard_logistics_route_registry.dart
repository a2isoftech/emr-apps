import 'package:collection/collection.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/controllers/existing_lot.dart';
import 'package:emr_one_yard_logistics/controllers/existing_packinglist_controller.dart';
import 'package:emr_one_yard_logistics/controllers/existing_pallet.dart';
import 'package:emr_one_yard_logistics/controllers/lots_filter_controller.dart';
import 'package:emr_one_yard_logistics/data/lots_data_source.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/screens/existing_bag.dart';
import 'package:emr_one_yard_logistics/screens/existing_lot.dart';
import 'package:emr_one_yard_logistics/screens/existing_packinglist.dart';
import 'package:emr_one_yard_logistics/screens/existing_pallet.dart';
import 'package:emr_one_yard_logistics/screens/lots_view.dart';
import 'package:emr_one_yard_logistics/screens/new_bag_wrapper.dart';
import 'package:emr_one_yard_logistics/screens/new_packing_list.dart';
import 'package:emr_one_yard_logistics/screens/new_pallet.dart';
import 'package:emr_one_yard_logistics/screens/ticket_with_lots_wrapper.dart';
import 'package:emr_one_yard_logistics/screens/yard_logistics_home.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/select_ticket.dlg.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:signals/signals_flutter.dart';

ExistingLotController? existingLotController;
ExistingPalletController? existingPalletController;
ExistingPackingListController? existingPackinglistController;

EmrQueryLayoutController<Lot>? _lotsViewLayoutController;

class YardLogisticsRouteRegistry {
  static final List<SingleChildWidget> providers = [
    ProxyProvider<BaseClient, YardLogisticsService>(
      update: (context, httpClient, contractService) =>
          _createYardLogisiticsService(context, httpClient),
    ),
  ];

  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    NamedRoutes.ylHome: (context, state) {
      return const YardLogisticsHome().withMultiProvider(providers);
    },
    NamedRoutes.ylNewLot: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final ylService = _createYardLogisiticsService(context, httpClient);

      return SelectTicketDialog(
        service: ylService,
        onPressed: (context, ticketInfo) => context.goNamed(
          NamedRoutes.ylTicketWithLots,
          queryParams: {
            'ticketId': ticketInfo.ticketId,
          },
        ),
      ).withMultiProvider(providers);
    },
    NamedRoutes.ylNewPallet: (context, state) {
      final code = state.queryParams['code'];
      return NewPallet(code: code).withMultiProvider(providers);
    },
    NamedRoutes.ylNewBag: (context, state) {
      return const NewBagWrapper().withMultiProvider(providers);
    },
    NamedRoutes.ylNewPackinglist: (context, state) {
      return const NewPackingList().withMultiProvider(providers);
    },
    NamedRoutes.ylExistingLot: (context, state) {
      final lot = state.extra! as Lot;

      if (existingLotController != null) {
        // If this is a different lot to the one in the controller
        // then use the new lot
        if (lot.id != existingLotController!.lot.value.id) {
          existingLotController = ExistingLotController(lot);
        } else {
          // If this is a newer version of the lot then use it
          // otherwise keep using the existing lot in the controller
          // As this build may be the result of a restoration meaning
          // that lot attached to the state (route) is an older version
          batch(() {
            existingLotController!.saveError.value = false;
            existingLotController!.confirmError.value = false;
            if (lot.changeVector!.isNewerThan(
              existingLotController!.lot.value.changeVector!,
            )) {
              existingLotController!.lot.value = lot;
            } else {
              existingLotController!.lot.value =
                  existingLotController!.lot.value;
            }
          });
        }
      } else {
        existingLotController = ExistingLotController(lot);
      }

      return ExistingLot(controller: existingLotController!)
          .withMultiProvider(providers);
    },
    NamedRoutes.ylTicketWithLots: (context, state) {
      final ticketId = state.queryParams['ticketId'];
      return TicketWithLotsWrapper(ticketId: ticketId ?? '')
          .withMultiProvider(providers);
    },
    NamedRoutes.ylExistingPallet: (context, state) {
      final pallet = state.extra! as Pallet;

      if (existingPalletController != null) {
        // The code below uses the same controller replacement
        // strategy as the existing lot route above
        if (pallet.id != existingPalletController!.pallet.value.id) {
          existingPalletController = ExistingPalletController(pallet);
        } else {
          batch(() {
            if (pallet.changeVector!.isNewerThan(
              existingPalletController!.pallet.value.changeVector!,
            )) {
              existingPalletController!.pallet.value = pallet;
            } else {
              existingPalletController!.pallet.value =
                  existingPalletController!.pallet.value;
            }
          });
        }
      } else {
        existingPalletController = ExistingPalletController(pallet);
      }

      // TODO: This part can be moved to controller
      if (pallet.lotDetails.isNotEmpty) {
        existingPalletController!.scannedLotCodeList.value = [
          ...pallet.lotDetails.map((lot) => lot.code),
        ];
      }

      existingPalletController!.totalPalletWeight.value = pallet.grossWeightUom;

      return ExistingPallet(controller: existingPalletController!)
          .withMultiProvider(providers);
    },
    NamedRoutes.ylExistingBag: (context, state) {
      final bag = state.extra! as Pallet;

      return ExistingBag(
        bag: bag,
      ).withMultiProvider(providers);
    },
    NamedRoutes.ylExistingPackinglist: (context, state) {
      final packingList = state.extra! as PackingList;

      if (existingPackinglistController != null) {
        // If this is a different lot to the one in the controller
        // then use the new lot
        if (packingList.id !=
            existingPackinglistController!.packinglist.value.id) {
          existingPackinglistController = ExistingPackingListController(
            packingList,
          );
        } else {
          // If this is a newer version of the lot then use it
          // otherwise keep using the existing lot in the controller
          // As this build may be the result of a restoration meaning
          // that lot attached to the state (route) is an older version
          batch(() {
            if (packingList.changeVector!.isNewerThan(
              existingPackinglistController!.packinglist.value.changeVector!,
            )) {
              existingPackinglistController!.packinglist.value = packingList;
            } else {
              existingPackinglistController!.packinglist.value =
                  existingPackinglistController!.packinglist.value;
            }
          });
        }
      } else {
        existingPackinglistController = ExistingPackingListController(
          packingList,
        );
      }

      // TODO: This part can be moved to controller
      existingPackinglistController!.scannedItemCodeList.value = [];
      if (packingList.lotDetails.isNotEmpty) {
        existingPackinglistController!.scannedItemCodeList.value.addAll(
          packingList.lotDetails.map((lot) => lot.code),
        );
      }
      if (packingList.palletDetails.isNotEmpty) {
        existingPackinglistController!.scannedItemCodeList.value.addAll(
          packingList.palletDetails.map((pallet) => pallet.code),
        );
      }

      if (packingList.grossWeightUom != null) {
        existingPackinglistController!.totalPackinglistWeight.value =
            packingList.grossWeightUom!;
      }

      return ExistingPackingList(
        controller: existingPackinglistController!,
      ).withMultiProvider(providers);
    },
    NamedRoutes.ylViewLots: (context, state) {
      final httpClient = Provider.of<BaseClient>(context);
      final ylService = _createYardLogisiticsService(context, httpClient);

      if (_lotsViewLayoutController == null) {
        final lotsDataSource = LotsDataSource(ylService: ylService);

        final userInfoService = context.read<UserInfoService>();

        final ticketsFilterController = LotsFilterController(
          userInfoService: userInfoService,
          ylService: ylService,
        );

        _lotsViewLayoutController = EmrQueryLayoutController<Lot>(
          dataSource: lotsDataSource,
          filterController: ticketsFilterController,
        );
      }

      return LotsView(
        queryLayoutController: _lotsViewLayoutController!,
        ylService: ylService,
      ).withMultiProvider(providers);
    },
  };

  static List<EORoute> yardLogisticsMenuItems = [
    EORoute(
      Icons.webhook,
      (context) => context.l10n.yardLogistics,
      section: kYardLogisticsSection,
      path: '/yard-logistics',
      selectedIcon: Icons.webhook,
      name: NamedRoutes.ylHome,
      isAllowed: (context, route) {
        return context
            .userHasPermission(YlConstants.viewYardLogisticsPermission);
      },
      widgetBuilder: widgetBuilders[NamedRoutes.ylHome]!,
      children: [
        if (!kIsWeb)
          EORoute(
            Symbols.box,
            (context) => context.l10n.ylNewLot,
            path: 'new-lot',
            name: NamedRoutes.ylNewLot,
            selectedIcon: Symbols.box,
            widgetBuilder: widgetBuilders[NamedRoutes.ylNewLot]!,
          ),
        if (!kIsWeb)
          EORoute(
            Symbols.box,
            (context) => context.l10n.ylNewPallet,
            path: 'new-pallet',
            name: NamedRoutes.ylNewPallet,
            widgetBuilder: widgetBuilders[NamedRoutes.ylNewPallet]!,
          ),
        if (!kIsWeb)
          EORoute(
            Symbols.add_box,
            (context) => context.l10n.ylNewBag,
            path: 'new-bag',
            name: NamedRoutes.ylNewBag,
            widgetBuilder: widgetBuilders[NamedRoutes.ylNewBag]!,
          ),
        if (!kIsWeb)
          EORoute(
            Symbols.list_alt,
            (context) => context.l10n.ylNewPackinglist,
            path: 'new-packinglist',
            name: NamedRoutes.ylNewPackinglist,
            widgetBuilder: widgetBuilders[NamedRoutes.ylNewPackinglist]!,
          ),
        if (!kIsWeb)
          EORoute(
            Icons.add_alarm,
            (context) => context.l10n.ylExistingLot,
            path: 'existing-lot',
            name: NamedRoutes.ylExistingLot,
            selectedIcon: Icons.add_alarm,
            isManuallyNavigable: false,
            widgetBuilder: widgetBuilders[NamedRoutes.ylExistingLot]!,
          ),
        if (!kIsWeb)
          EORoute(
            Icons.add_alarm,
            (context) => context.l10n.ylTicketWithLots,
            path: 'ticket-with-lots',
            name: NamedRoutes.ylTicketWithLots,
            selectedIcon: Icons.add_alarm,
            isManuallyNavigable: false,
            widgetBuilder: widgetBuilders[NamedRoutes.ylTicketWithLots]!,
          ),
        if (!kIsWeb)
          EORoute(
            Icons.add_alarm,
            (context) => context.l10n.ylExistingPallet,
            path: 'existing-pallet',
            name: NamedRoutes.ylExistingPallet,
            selectedIcon: Icons.add_alarm,
            isManuallyNavigable: false,
            widgetBuilder: widgetBuilders[NamedRoutes.ylExistingPallet]!,
          ),
        if (!kIsWeb)
          EORoute(
            Icons.add_alarm,
            (context) => context.l10n.ylExistingBag,
            path: 'existing-bag',
            name: NamedRoutes.ylExistingBag,
            selectedIcon: Icons.list_alt,
            isManuallyNavigable: false,
            widgetBuilder: widgetBuilders[NamedRoutes.ylExistingBag]!,
          ),
        if (!kIsWeb)
          EORoute(
            Icons.add_alarm,
            (context) => context.l10n.ylExistingPackinglist,
            path: 'existing-packinglist',
            name: NamedRoutes.ylExistingPackinglist,
            selectedIcon: Icons.list_alt,
            isManuallyNavigable: false,
            widgetBuilder: widgetBuilders[NamedRoutes.ylExistingPackinglist]!,
          ),
        EORoute(
          Symbols.stacks_sharp,
          (context) => context.l10n.ylViewLots,
          path: 'view-lots',
          name: NamedRoutes.ylViewLots,
          selectedIcon: Symbols.stacks_sharp,
          widgetBuilder: widgetBuilders[NamedRoutes.ylViewLots]!,
        ),
      ],
    ),
  ];

  static YardLogisticsService _createYardLogisiticsService(
    BuildContext context,
    BaseClient httpClient,
  ) {
    final userInfoService = Provider.of<UserInfoService>(
      context,
      listen: false,
    );
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;

    final territory = userInfoService.userInfo.territories.firstWhereOrNull(
      (element) => element.code == userInfoService.userInfo.defaultTerritory,
    );

    final defaultYard = territory!.depots!.firstWhereOrNull(
      (element) => element.yardCode == userInfoService.userInfo.defaultYard,
    );

    if (defaultYard == null) {
      throw Exception('Default yard not found');
    }

    return YardLogisticsService(
      httpClient: httpClient,
      defaultYardCode: defaultYard.yardCode!,
      defaultTerritoryCode: territory.code,
      ticketsApiUrl: Provider.of<AppConfig>(
        context,
        listen: false,
      ).ticketsApiUrl,
      apiUrl:
          Provider.of<AppConfig>(context, listen: false).yardLogisticsApiUrl,
      mediaApiUrl: Provider.of<AppConfig>(context, listen: false).mediaApi,
      settingsController: settingsController,
    );
  }

  static String kYardLogisticsSection = 'YardLogistics';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(yardLogisticsMenuItems);
    return registry;
  }
}
