import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class DoorAccessRouteRegistry {
  static const String routeMain = 'da-door-access';
  static const String routeSites = 'da-sites';
  static const String routeSchedules = 'da-schedules';
  static const String routeAddSchedule = 'da-add-schedule';
  static const String routeUsers = 'da-users';
  static const String routeGroups = 'da-groups';
  static const String routeUserDetails = 'da-user-details';
  static const String routeAlerts = 'da-alerts';
  static const String routeAccessCredentials = 'da-access-credentials';
  static const String routeAlertsDoorAccessAttempts =
      'da-alerts-door-access-attempts';
  static const String routeAlertsDoorAccessAttemptSnapshots =
      'da-alerts-door-access-attempt-snapshots';
  static const String routeAlertsScheduleUpdates = 'da-alerts-schedule-updates';
  static const String routeSiteDetails = 'da-site-details';
  static const String routeAccessPoints = 'da-access-points';
  static const String routeAccessPointDetails = 'da-access-point-details';
  static const String routeDoorControllers = 'da-door-controllers';
  static const String routeFloorPlans = 'da-floor-plans';
  static const String routeFloorPlanEditor = 'da-floor-plan-editor';
  static const String routeDoorControllerDetail = 'da-door-controller-detail';
  static const String routeLinkGroupAccessPoint = 'da-link-group-access-point';
  static const String routeDoorSchedules = 'da-door-schedules';

  static const String kDoorAccessPathPrefix = '/workplace/door-access';

  static const String kDoorAccessSection = 'DoorAccess';

  static Widget openAddNewSite(
    ManageSiteController controller,
    GlobalKey<FormState> siteFormKey,
    Site? site,
  ) {
    return AddNewSite(
      siteFormKey: siteFormKey,
      controller: controller,
      site: site,
    ).withMultiProvider(providers);
  }

  static Widget openAddNewGroup(
    ManageGroupController controller,
    GlobalKey<FormState> formKey,
    Group? group,
  ) {
    return AddNewGroup(
      groupFormKey: formKey,
      controller: controller,
      group: group,
    ).withMultiProvider(providers);
  }

  static Widget openAddNewAccessController(
    ManageDoorControllerController controller,
    GlobalKey<FormState> formKey,
    AccessController? accessController,
  ) {
    return AddNewDoorController(
      doorControllerFormKey: formKey,
      controller: controller,
      accessController: accessController,
    ).withMultiProvider(providers);
  }

  static Widget openUpdateFloorPlan(
    FloorPlanController controller,
    GlobalKey<FormState> formKey,
    AppConfig appConfig,
    String siteId,
    FloorPlan? floorPlan, {
    required bool isInEditMode,
  }) {
    return FloorPlanEditor(
      controller: controller,
      appConfig: appConfig,
      floorPlan: floorPlan,
      siteId: siteId,
      formKey: formKey,
      isInEditMode: isInEditMode,
    ).withMultiProvider(providers);
  }

  static Widget openLinkGroupAndAccessPoint(
    GroupsAccessPointsLinkController controller,
    DoorAccessService doorAccessService,
    GlobalKey<FormState> formKey, {
    String? groupId,
    String? accessPointId,
    bool isinPopup = false,
  }) {
    return GroupsAccessPointsLinkScreen(
      controller: controller,
      formKey: formKey,
      doorAccessService: doorAccessService,
      groupId: groupId,
      accessPointId: accessPointId,
      isInPopup: isinPopup,
    ).withMultiProvider(providers);
  }

  static Widget openDeLinkGroupAndAccessPoint(
    GroupsAccessPointsDeLinkController controller,
    DoorAccessService doorAccessService,
    GlobalKey<FormState> formKey, {
    List<String>? groupIds,
    List<String>? accessPointIds,
    bool isinPopup = false,
  }) {
    return GroupsAccessPointsDeLinkScreen(
      controller: controller,
      formKey: formKey,
      doorAccessService: doorAccessService,
      groupIds: groupIds,
      accessPointIds: accessPointIds,
      isInPopup: isinPopup,
    ).withMultiProvider(providers);
  }

  static Widget openSetCamera(
    AccessPointCameraFormController controller,
    DoorAccessService doorAccessService, {
    required String accessPointId,
    Camera? camera,
  }) {
    return AccessPointCameraForm(
      controller: controller,
      doorAccessService: doorAccessService,
      accessPointId: accessPointId,
      camera: camera,
    ).withMultiProvider(providers);
  }

  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    routeMain: (context, state) {
      final doorAccessService = _getDoorAccessService(context);
      return FutureBuilder(
        future: DoorAccessRealtime.instance.initialize(
          context: context,
          appConfig: Provider.of<AppConfig>(context, listen: false),
          doorAccessService: doorAccessService,
        ),
        builder: (BuildContext ctx, AsyncSnapshot<void> snapshot) {
          if (ConnectionState.done == snapshot.connectionState) {
            return BasePage(
              signalRService: DoorAccessRealtime.instance.service,
              child: GenericRouteScreen.fromPathPrefix(kDoorAccessPathPrefix),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      );
    },
    routeSites: (context, state) {
      return const SitesScreen().withMultiProvider(providers);
    },
    routeUsers: (context, state) {
      return const UsersScreen().withMultiProvider(providers);
    },
    routeGroups: (context, state) {
      return const GroupsScreen().withMultiProvider(providers);
    },
    routeAlerts: (context, state) => Row(
      children: [
        EOHoverTile(
          onTap: () async {
            context.goNamed(
              DoorAccessRouteRegistry.routeAlertsDoorAccessAttempts,
            );
          },
          child: const EOHoverTileSimpleContent(
            icon: Icons.alarm,
            label: 'Door Access Attempts',
          ),
        ),
        EOHoverTile(
          onTap: () async {
            context.goNamed(routeAlertsDoorAccessAttemptSnapshots);
          },
          child: const EOHoverTileSimpleContent(
            icon: Icons.alarm,
            label: 'Snapshots',
          ),
        ),
        EOHoverTile(
          onTap: () async {
            context.goNamed(DoorAccessRouteRegistry.routeAlertsScheduleUpdates);
          },
          child: const EOHoverTileSimpleContent(
            icon: Icons.alarm,
            label: 'Schedule Updates',
          ),
        ),
      ],
    ),
    routeAlertsDoorAccessAttempts: (context, state) {
      return const DoorAccessAttemptsScreen(
        withSnapshots: false,
      ).withMultiProvider(providers);
    },
    routeAlertsDoorAccessAttemptSnapshots: (context, state) {
      return const DoorAccessAttemptsScreen(
        withSnapshots: true,
      ).withMultiProvider(providers);
    },
    routeAlertsScheduleUpdates: (context, state) {
      return const ScheduleUpdatesScreen().withMultiProvider(providers);
    },
    routeSiteDetails: (context, state) {
      return SiteDetailsScreen(
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeAccessPoints: (context, state) {
      return AccessPointsScreen(
        doorAccessService: _getDoorAccessService(context),
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeDoorControllers: (context, state) {
      return DoorControllersScreen(
        doorAccessService: _getDoorAccessService(context),
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeFloorPlans: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);
      return FloorPlansScreen(
        floorPlanController: FloorPlanController(
          doorAccessService: _getDoorAccessService(context),
          appConfig: appConfig,
        ),
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeFloorPlanEditor: (context, state) {
      final appConfig = Provider.of<AppConfig>(context, listen: false);
      final formKey = GlobalKey<FormState>();

      return openUpdateFloorPlan(
        FloorPlanController(
          doorAccessService: _getDoorAccessService(context),
          appConfig: appConfig,
        ),
        formKey,
        appConfig,
        state.params['siteId'] ?? '',
        state.extra as FloorPlan?,
        isInEditMode: state.queryParams['mode'] != 'view',
      );
    },
    routeDoorControllerDetail: (context, state) {
      return DoorControllerDetailScreen(
        doorAccessService: _getDoorAccessService(context),
        accessControllerId: state.params['accessControllerId'] ?? '',
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeUserDetails: (context, state) {
      return UserDetailsScreen(
        doorAccessService: _getDoorAccessService(context),
        userId: state.params['userId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeLinkGroupAccessPoint: (context, state) {
      final formKey = GlobalKey<FormState>();
      final svc = _getDoorAccessService(context);
      return GroupsAccessPointsLinkScreen(
        controller: GroupsAccessPointsLinkController(doorAccessService: svc),
        formKey: formKey,
        doorAccessService: svc,
        groupId: state.params['groupId'],
      ).withMultiProvider(providers);
    },
    routeSchedules: (context, state) {
      return SchedulesScreen(
        accessControllerId: state.params['accessControllerId'] ?? '',
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeAddSchedule: (context, state) {
      return CreateScheduleScreen(
        accessControllerId: state.params['accessControllerId'] ?? '',
        siteId: state.params['siteId'] ?? '',
        doorAccessService: _getDoorAccessService(context),
      ).withMultiProvider(providers);
    },
    routeAccessPointDetails: (context, state) {
      return AccessPointDetailsScreen(
        doorAccessService: _getDoorAccessService(context),
        accessPointId: state.params['accessPointId'] ?? '',
        siteId: state.params['siteId'] ?? '',
      ).withMultiProvider(providers);
    },
    routeAccessCredentials: (context, state) {
      return const AccessCredentialsScreen().withMultiProvider(providers);
    },
    routeDoorSchedules: (context, state) {
      final formKey = GlobalKey<FormState>();

      return DoorsScreen(
        configurationController: ConfigurationController(
          priorityConfigurationController: PriorityConfigurationController(),
          scheduleConfigurationController: ScheduleConfigurationController(),
          doorAccessService: _getDoorAccessService(context),
          formKey: formKey,
        ),
      ).withMultiProvider(providers);
    },
  };

  static DoorAccessService _getDoorAccessService(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    return DoorAccessService(
      httpClient: DoorAccessResilientHttpClient.getClient(appConfig),
    );
  }

  static List<SingleChildWidget> providers = [
    Provider<UsersDataSource>(
      create: (context) {
        return UsersDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),

    Provider<EmrQueryLayoutController<DoorAccessUser>>(
      create: (context) {
        final dataSource = Provider.of<UsersDataSource>(context, listen: false);
        return EmrQueryLayoutController<DoorAccessUser>(
          dataSource: dataSource,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),

    Provider<SitesDataSource>(
      create: (context) {
        return SitesDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<EmrQueryLayoutController<Site>>(
      create: (context) {
        final dataSource = Provider.of<SitesDataSource>(context, listen: false);
        return EmrQueryLayoutController<Site>(
          dataSource: dataSource,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),
    Provider<GroupsDataSource>(
      create: (context) {
        return GroupsDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<EmrQueryLayoutController<AdGroup>>(
      create: (context) {
        final dataSource = Provider.of<GroupsDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<AdGroup>(
          dataSource: dataSource,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),

    Provider<SchedulesDataSource>(
      create: (context) {
        return SchedulesDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<EmrQueryLayoutController<Schedule>>(
      create: (context) {
        final dataSource = Provider.of<SchedulesDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<Schedule>(
          dataSource: dataSource,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),

    ChangeNotifierProvider<FloorPlanController>(
      create: (context) {
        return FloorPlanController(
          doorAccessService: _getDoorAccessService(context),
          appConfig: Provider.of<AppConfig>(context, listen: false),
        );
      },
    ),

    ChangeNotifierProvider<ManageSiteController>(
      create: (context) {
        return ManageSiteController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<ManageDoorControllerController>(
      create: (context) {
        return ManageDoorControllerController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<RealTimeSnapshotController>(
      create: (context) {
        final appConfig = Provider.of<AppConfig>(context, listen: false);

        return RealTimeSnapshotController(
          mediaService: MediaService(
            client: DoorAccessResilientHttpClient.getClient(appConfig),
          ),
        );
      },
    ),
    ChangeNotifierProvider<ManageGroupController>(
      create: (context) {
        return ManageGroupController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<GroupsAccessPointsLinkController>(
      create: (context) {
        return GroupsAccessPointsLinkController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<GroupsAccessPointsDeLinkController>(
      create: (context) {
        return GroupsAccessPointsDeLinkController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<ManageScheduleController>(
      create: (context) {
        return ManageScheduleController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<ManageAccessPointController>(
      create: (context) {
        return ManageAccessPointController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorAccessAttemptsDataSource>(
      create: (context) {
        return DoorAccessAttemptsDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorAccessAttemptsDataController>(
      create: (context) {
        return DoorAccessAttemptsDataController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorAccessAttemptsFilterController>(
      create: (context) {
        final controller = Provider.of<DoorAccessAttemptsDataController>(
          context,
          listen: false,
        );
        return DoorAccessAttemptsFilterController(dataController: controller);
      },
    ),

    Provider<EmrQueryLayoutController<DoorAccessAttemptEvent>>(
      create: (context) {
        final dataSource = Provider.of<DoorAccessAttemptsDataSource>(
          context,
          listen: false,
        );
        final filterController =
            Provider.of<DoorAccessAttemptsFilterController>(
              context,
              listen: false,
            );
        return EmrQueryLayoutController<DoorAccessAttemptEvent>(
          dataSource: dataSource,
          filterController: filterController,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),
    Provider<ScheduleUpdatesDataSource>(
      create: (context) {
        return ScheduleUpdatesDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<ScheduleUpdatesDataController>(
      create: (context) {
        return ScheduleUpdatesDataController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<ScheduleUpdatesFilterController>(
      create: (context) {
        final controller = Provider.of<ScheduleUpdatesDataController>(
          context,
          listen: false,
        );
        return ScheduleUpdatesFilterController(dataController: controller);
      },
    ),

    Provider<EmrQueryLayoutController<ScheduleUpdateEvent>>(
      create: (context) {
        final dataSource = Provider.of<ScheduleUpdatesDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<ScheduleUpdatesFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<ScheduleUpdateEvent>(
          dataSource: dataSource,
          filterController: filterController,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),
    ChangeNotifierProvider<ManageAccessCredentialController>(
      create: (context) {
        return ManageAccessCredentialController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<AccessCredentialsDataSourrce>(
      create: (context) {
        return AccessCredentialsDataSourrce(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<AccessCredentialsDataController>(
      create: (context) {
        return AccessCredentialsDataController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<AccessCredentialsFilterController>(
      create: (context) {
        final controller = Provider.of<AccessCredentialsDataController>(
          context,
          listen: false,
        );
        return AccessCredentialsFilterController(dataController: controller);
      },
    ),

    Provider<EmrQueryLayoutController<AccessCredential>>(
      create: (context) {
        final dataSource = Provider.of<AccessCredentialsDataSourrce>(
          context,
          listen: false,
        );
        final filterController = Provider.of<AccessCredentialsFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<AccessCredential>(
          dataSource: dataSource,
          filterController: filterController,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),

    // Door Schedule
    ChangeNotifierProvider<ManageDoorController>(
      create: (context) {
        return ManageDoorController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorDataSource>(
      create: (context) {
        return DoorDataSource(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorDataController>(
      create: (context) {
        return DoorDataController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    Provider<DoorsFilterController>(
      create: (context) {
        final controller = Provider.of<DoorDataController>(
          context,
          listen: false,
        );
        return DoorsFilterController(dataController: controller);
      },
    ),

    Provider<EmrQueryLayoutController<DoorSearchResult>>(
      create: (context) {
        final dataSource = Provider.of<DoorDataSource>(context, listen: false);
        final filterController = Provider.of<DoorsFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<DoorSearchResult>(
          dataSource: dataSource,
          filterController: filterController,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      },
    ),
    ChangeNotifierProvider<BulkScheduleConfigurationController>(
      create: (context) {
        return BulkScheduleConfigurationController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
    ChangeNotifierProvider<AccessPointCameraFormController>(
      create: (context) {
        return AccessPointCameraFormController(
          doorAccessService: _getDoorAccessService(context),
        );
      },
    ),
  ];

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes([
      EORoute(
        Icons.save_as,
        (context) => 'Door Access',
        section: kDoorAccessSection,
        path: kDoorAccessPathPrefix,
        name: routeMain,
        widgetBuilder: widgetBuilders[routeMain]!,
        isAllowed: (context, route) =>
            _isAllowed(context, route, Permissions.doorAccess),

        children: [
          EORoute(
            Icons.account_box,
            (context) => 'Sites',
            path: routeSites,
            name: routeSites,
            widgetBuilder: widgetBuilders[routeSites]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewSites),
            children: [
              EORoute(
                Icons.account_box,
                (context) => 'Site Details',
                path: ':siteId',
                name: routeSiteDetails,
                widgetBuilder: widgetBuilders[routeSiteDetails]!,
                isAllowed: (context, route) =>
                    _isAllowed(context, route, Permissions.viewSiteDetails),
                children: [
                  EORoute(
                    Icons.account_box,
                    (context) => 'Access Points',
                    path: routeAccessPoints,
                    name: routeAccessPoints,
                    widgetBuilder: widgetBuilders[routeAccessPoints]!,
                    isAllowed: (context, route) => _isAllowed(
                      context,
                      route,
                      Permissions.viewAccessPoints,
                    ),
                    children: [
                      EORoute(
                        Icons.account_box,
                        (context) => 'Access Point Detail',
                        path: ':accessPointId/detail',
                        name: routeAccessPointDetails,
                        widgetBuilder: widgetBuilders[routeAccessPointDetails]!,
                        isAllowed: (context, route) => _isAllowed(
                          context,
                          route,
                          Permissions.viewAccessPointDetails,
                        ),
                      ),
                    ],
                  ),
                  EORoute(
                    Icons.account_box,
                    (context) => 'Controllers',
                    path: routeDoorControllers,
                    name: routeDoorControllers,
                    widgetBuilder: widgetBuilders[routeDoorControllers]!,
                    isAllowed: (context, route) => _isAllowed(
                      context,
                      route,
                      Permissions.viewDoorControllers,
                    ),
                    children: [
                      EORoute(
                        Icons.account_box,
                        (context) => 'Door Controller Detail',
                        path: ':accessControllerId/detail',
                        name: routeDoorControllerDetail,
                        widgetBuilder:
                            widgetBuilders[routeDoorControllerDetail]!,
                        isAllowed: (context, route) => _isAllowed(
                          context,
                          route,
                          Permissions.viewDoorControllerDetails,
                        ),
                      ),
                      EORoute(
                        Icons.account_box,
                        (context) => 'Schedules',
                        path: ':accessControllerId/schedules',
                        name: routeSchedules,
                        widgetBuilder: widgetBuilders[routeSchedules]!,
                        isAllowed: (context, route) => _isAllowed(
                          context,
                          route,
                          Permissions.viewSchedules,
                        ),
                        children: [
                          EORoute(
                            Icons.account_box,
                            (context) => 'Add New Schedule',
                            path: routeAddSchedule,
                            name: routeAddSchedule,
                            widgetBuilder: widgetBuilders[routeAddSchedule]!,
                            isAllowed: (context, route) => _isAllowed(
                              context,
                              route,
                              Permissions.manageSchedules,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  EORoute(
                    Icons.account_box,
                    (context) => 'Floor Plans',
                    path: routeFloorPlans,
                    name: routeFloorPlans,
                    widgetBuilder: widgetBuilders[routeFloorPlans]!,
                    isAllowed: (context, route) =>
                        _isAllowed(context, route, Permissions.viewFloorPlans),
                    children: [
                      EORoute(
                        Icons.account_box,
                        (context) => 'Floor Plan Editor',
                        path: routeFloorPlanEditor,
                        name: routeFloorPlanEditor,
                        widgetBuilder: widgetBuilders[routeFloorPlanEditor]!,
                        isAllowed: (context, route) => _isAllowed(
                          context,
                          route,
                          Permissions.viewFloorPlans,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          EORoute(
            Icons.account_box,
            (context) => 'Users',
            path: routeUsers,
            name: routeUsers,
            widgetBuilder: widgetBuilders[routeUsers]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewUsers),
            children: [
              EORoute(
                Icons.account_box,
                (context) => 'User Details',
                path: ':userId/details',
                name: routeUserDetails,
                widgetBuilder: widgetBuilders[routeUserDetails]!,
                isAllowed: (context, route) =>
                    _isAllowed(context, route, Permissions.viewUserDetails),
              ),
            ],
          ),
          EORoute(
            Icons.account_box,
            (context) => 'Groups',
            path: routeGroups,
            name: routeGroups,
            widgetBuilder: widgetBuilders[routeGroups]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewGroups),
            children: [
              EORoute(
                Icons.account_box,
                (context) => 'Link Access Point',
                path: ':groupId/link-access-point',
                name: routeLinkGroupAccessPoint,
                widgetBuilder: widgetBuilders[routeLinkGroupAccessPoint]!,
                isAllowed: (context, route) =>
                    _isAllowed(context, route, Permissions.linkAccessPoint),
              ),
            ],
          ),
          EORoute(
            Icons.account_box,
            (context) => 'Alerts',
            path: routeAlerts,
            name: routeAlerts,
            widgetBuilder: widgetBuilders[routeAlerts]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewAlerts),
            children: [
              EORoute(
                Icons.account_box,
                (context) => 'Door Access Attempts',
                path: routeAlertsDoorAccessAttempts,
                name: routeAlertsDoorAccessAttempts,
                widgetBuilder: widgetBuilders[routeAlertsDoorAccessAttempts]!,
                isAllowed: (context, route) => _isAllowed(
                  context,
                  route,
                  Permissions.viewDoorAccessAttempts,
                ),
              ),
              EORoute(
                Icons.account_box,
                (context) => 'Snapshots',

                path: routeAlertsDoorAccessAttemptSnapshots,
                name: routeAlertsDoorAccessAttemptSnapshots,
                widgetBuilder:
                    widgetBuilders[routeAlertsDoorAccessAttemptSnapshots]!,
                isAllowed: (context, route) => _isAllowed(
                  context,
                  route,
                  Permissions.viewDoorAccessAttempts,
                ),
              ),
              EORoute(
                Icons.account_box,
                (context) => 'Schedule Updates',
                path: routeAlertsScheduleUpdates,
                name: routeAlertsScheduleUpdates,
                widgetBuilder: widgetBuilders[routeAlertsScheduleUpdates]!,
                isAllowed: (context, route) =>
                    _isAllowed(context, route, Permissions.viewScheduleUpdates),
              ),
            ],
          ),
          EORoute(
            Icons.account_box,
            (context) => 'Access Credentials',
            path: routeAccessCredentials,
            name: routeAccessCredentials,
            widgetBuilder: widgetBuilders[routeAccessCredentials]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewAccessCredentials),
          ),
          EORoute(
            Icons.account_box,
            (context) => 'Door Schedules',
            path: routeDoorSchedules,
            name: routeDoorSchedules,
            widgetBuilder: widgetBuilders[routeDoorSchedules]!,
            isAllowed: (context, route) =>
                _isAllowed(context, route, Permissions.viewDoorControllers),
          ),
        ],
      ),
    ]);
    return registry;
  }

  static bool _isAllowed(
    BuildContext context,
    EORoute route,
    String permissionName,
  ) {
    final result = Permissions.check(context, permissionName);

    return result;
  }
}
