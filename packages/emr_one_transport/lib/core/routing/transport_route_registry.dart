import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/core/transport_resilient_http_client.dart';
import 'package:emr_one_transport/data/controllers/common/clone_jobs_forward_controller.dart';
import 'package:emr_one_transport/data/controllers/common/haulier_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/job_action_controller.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/controllers/common/open_jobs_report_controller.dart';
import 'package:emr_one_transport/data/controllers/common/screen_refresh_controller.dart';
import 'package:emr_one_transport/data/controllers/common/yard_report_controller.dart';
import 'package:emr_one_transport/data/controllers/containers/container_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/containers/containers_data_controller.dart';
import 'package:emr_one_transport/data/controllers/containers/containers_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/haulier_settings/haulier_settings_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/delete_job_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_schedule_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_tracking_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_data_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/needs_container/needs_container_controller.dart';
import 'package:emr_one_transport/data/controllers/needs_container/needs_container_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/clone_plan_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_data_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/schedule_plan_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/total_jobs_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/reports/reports_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/driver_events_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/move_outstanding_job_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/truck_job_info_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/unschedule_controller.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_data_controller.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_data_controller.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/trailers/trailer_data_controller.dart';
import 'package:emr_one_transport/data/controllers/trailers/trailer_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_data_controller.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/dispatch_yards_search_controller.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/managed_thirdparty_search_controller.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/scheduler_preference_controller.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/thirdparty_search_controlller.dart';
import 'package:emr_one_transport/data/dataSources/containers_data_source.dart';
import 'package:emr_one_transport/data/dataSources/customers_data_source.dart';
import 'package:emr_one_transport/data/dataSources/haulier_settings_data_source.dart';
import 'package:emr_one_transport/data/dataSources/job_list_data.dart';
import 'package:emr_one_transport/data/dataSources/managed_thirdparty_settings_data_source.dart';
import 'package:emr_one_transport/data/dataSources/plan_list_data.dart';
import 'package:emr_one_transport/data/dataSources/standing_order_data.dart';
import 'package:emr_one_transport/data/dataSources/thirdparty_settings_data_source.dart';
import 'package:emr_one_transport/data/dataSources/total_jobs_data.dart';
import 'package:emr_one_transport/data/dataSources/trailers_data_source.dart';
import 'package:emr_one_transport/data/dataSources/truck_data_source.dart';
import 'package:emr_one_transport/data/models/containers/container.dart';
import 'package:emr_one_transport/data/models/customers/customer_detail.dart';
import 'package:emr_one_transport/data/models/haulier_settings/haulier_settings.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/plans/plan_haulier_job.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/models/trailers/transport_trailer.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_thirdparty_hauliers.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/container_service.dart';
import 'package:emr_one_transport/data/services/customer_service.dart';
import 'package:emr_one_transport/data/services/driver_event_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/haulier_settings_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/jobs/job_tracking_service.dart';
import 'package:emr_one_transport/data/services/needs_container/needs_container_service.dart';
import 'package:emr_one_transport/data/services/reports_service.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:emr_one_transport/data/services/signalr_service.dart';
import 'package:emr_one_transport/data/services/standing_order_service.dart';
import 'package:emr_one_transport/data/services/tracking/common_asset_locator_service.dart';
import 'package:emr_one_transport/data/services/tracking/trucks_locator_service.dart';
import 'package:emr_one_transport/data/services/trailer_service.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:emr_one_transport/data/services/vor_service.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/asset_locator_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/containers/container_add_edit_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/containers/containers_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/internal_truck_edit_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/internal_trucks_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/managed_third_party_trucks/add_edit_managed_truck.dart';
import 'package:emr_one_transport/presentation/screens/assets/managed_third_party_trucks/managed_trucks_screen.dart';
import 'package:emr_one_transport/presentation/screens/assets/trailers/trailers_screen.dart';
import 'package:emr_one_transport/presentation/screens/jobs/create_job.dart';
import 'package:emr_one_transport/presentation/screens/jobs/job_list_search.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/create_plan.dart';
import 'package:emr_one_transport/presentation/screens/planner/widget/edit_plan.dart';
import 'package:emr_one_transport/presentation/screens/reports/reports_view_widget.dart';
import 'package:emr_one_transport/presentation/screens/screens.dart';
import 'package:emr_one_transport/presentation/screens/standing_order/create_standing_order.dart';
import 'package:emr_one_transport/presentation/screens/user_preferences/dispatch_yards_search.dart';
import 'package:emr_one_transport/presentation/screens/user_preferences/managed_thirdparty_search.dart';
import 'package:emr_one_transport/presentation/screens/user_preferences/scheduler_preference/scheduler_preference.dart';
import 'package:emr_one_transport/presentation/screens/user_preferences/thirdparty_search.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class TransportRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    RoutingPathName.transport: (context, state) =>
        GenericRouteScreen.fromPathPrefix(state.path!),
    RoutingPathName.jobs: (context, state) {
      return const JobListSearch().withMultiProvider(providers);
    },
    RoutingPathName.createJob: (context, state) {
      return CreateJob(
        Provider.of<AppConfig>(context),
      ).withMultiProvider(providers);
    },
    RoutingPathName.jobTracking: (context, state) {
      final jobId = state.params['jobId'];
      String? territoryCode;
      if (state.extra != null) {
        territoryCode = state.extra! as String;
      }
      return SelectionArea(
        child: JobTrackingScreen(
          jobId: int.parse(jobId ?? '0'),
          territoryCode: territoryCode,
        ),
      ).withMultiProvider(providers);
    },
    RoutingPathName.standingOrder: (context, state) {
      return const StandingOrderScreen().withMultiProvider(providers);
    },
    RoutingPathName.createStandingOrder: (context, state) {
      if (state.extra != null) {
        return CreateStandingOrder(
          job: state.extra! as JobList,
        ).withMultiProvider(providers);
      }
      return const CreateStandingOrder().withMultiProvider(providers);
    },
    RoutingPathName.planner: (context, state) {
      return const PlannerScreen().withMultiProvider(providers);
    },
    RoutingPathName.createPlan: (context, state) {
      return CreatePlan(
        Provider.of<AppConfig>(context),
      ).withMultiProvider(providers);
    },
    RoutingPathName.editPlan: (context, state) {
      final planId = state.params['planId'];
      return EditPlan(
        planId: int.parse(planId!),
        appConfig: Provider.of<AppConfig>(context),
      ).withMultiProvider(providers);
    },
    RoutingPathName.scheduler: (context, state) {
      return const SchedulerScreen().withMultiProvider(providers);
    },
    RoutingPathName.locateJob: (context, state) {
      final jobNumberStr = state.params['jobNumber'];
      final jobNumber = jobNumberStr != null
          ? int.tryParse(jobNumberStr)
          : null;
      return SchedulerScreen(jobNumber: jobNumber).withMultiProvider(providers);
    },
    RoutingPathName.assets: (context, state) {
      return const AssetsScreen();
    },
    RoutingPathName.internalTrucks: (context, state) {
      return const InternalTrucksScreen().withMultiProvider(providers);
    },
    RoutingPathName.editTruck: (context, state) {
      final truckId = state.params['truckId'] ?? '';
      return truckId.isNotEmpty
          ? InternalTruckEditScreen(
              truckId: truckId,
            ).withMultiProvider(providers)
          : const PlaceHolderScreen();
    },
    RoutingPathName.managedTrucks: (context, state) {
      return const ManagedTrucksScreen().withMultiProvider(providers);
    },
    RoutingPathName.addManagedTruck: (context, state) {
      return const AddEditManagedTruck().withMultiProvider(providers);
    },
    RoutingPathName.editManagedTruck: (context, state) {
      final truckId = state.params['truckId'] ?? '';
      return (truckId.isNotEmpty
              ? AddEditManagedTruck(truckId: truckId)
              : const PlaceHolderScreen())
          .withMultiProvider(providers);
    },
    RoutingPathName.containers: (context, state) {
      return const ContainersScreen().withMultiProvider(providers);
    },
    RoutingPathName.addContainer: (context, state) {
      return const ContainerCreateEditScreen().withMultiProvider(providers);
    },
    RoutingPathName.editContainer: (context, state) {
      final containerId = state.params['containerId'] ?? '';
      return (containerId.isNotEmpty
              ? ContainerCreateEditScreen(containerId: containerId)
              : const PlaceHolderScreen())
          .withMultiProvider(providers);
    },
    RoutingPathName.assetLocator: (context, state) {
      return const AssetLocatorScreen().withMultiProvider(providers);
    },
    RoutingPathName.trailers: (context, state) {
      return const TrailersScreen().withMultiProvider(providers);
    },
    RoutingPathName.customers: (context, state) {
      return const CustomersScreen().withMultiProvider(providers);
    },
    RoutingPathName.reports: (context, state) {
      return const ReportsScreen().withMultiProvider(providers);
    },
    RoutingPathName.viewReport: (context, state) {
      var reportName = '';
      if (state.extra != null) {
        reportName = state.extra! as String;
      }
      return ReportsViewWidget(
        reportName: reportName,
      ).withMultiProvider(providers);
    },
    RoutingPathName.needsContainer: (context, state) {
      return const NeedsContainerScreen().withMultiProvider(providers);
    },
    RoutingPathName.haulierSettings: (context, state) {
      return const HaulierSettingsScreen().withMultiProvider(providers);
    },
    RoutingPathName.userPreferences: (context, state) {
      return const UserPreferencesScreen();
    },
    RoutingPathName.schedulerPreferences: (context, state) {
      return const SchedulerPreferenceScreen().withMultiProvider(providers);
    },
    RoutingPathName.dispatchYardSettings: (context, state) {
      return const DispatchYardsSearch().withMultiProvider(providers);
    },
    RoutingPathName.managedThirdPartySettings: (context, state) {
      return const ManagedThirdpartyHauliersSearch().withMultiProvider(
        providers,
      );
    },
    RoutingPathName.thirdPartySettings: (context, state) {
      return const ThirdPartyHauliersSearch().withMultiProvider(providers);
    },
  };

  static List<EORoute> transportMenuItems = [
    EORoute(
      Icons.local_shipping,
      (_) => kTransportSection,
      section: kTransportSection,
      isAllowed: (context, route) =>
          _isAllowed(context, UserPermissions.viewTransport),
      path: RoutingPathUrl.transport,
      selectedIcon: Icons.logo_dev,
      name: RoutingPathName.transport,
      widgetBuilder: widgetBuilders[RoutingPathName.transport]!,
      children: [
        EORoute(
          Icons.fire_truck_outlined,
          (_) => RoutingPathDisplayName.jobTracking,
          section: kTransportSection,
          isManuallyNavigable: false,
          path: RoutingPathUrl.jobTracking,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.jobTrackerView),
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.jobTracking,
          widgetBuilder: widgetBuilders[RoutingPathName.jobTracking]!,
        ),
        EORoute(
          Icons.fire_truck_outlined,
          (_) => RoutingPathDisplayName.jobs,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.jobsView),
          path: RoutingPathUrl.jobs,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.jobs,
          widgetBuilder: widgetBuilders[RoutingPathName.jobs]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.createJob,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.jobsWrite),
              path: RoutingPathUrl.createJob,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.createJob,
              widgetBuilder: widgetBuilders[RoutingPathName.createJob]!,
            ),
          ],
        ),
        EORoute(
          Icons.inventory_2_outlined,
          (_) => RoutingPathDisplayName.standingOrder,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.standingOrderView),
          path: RoutingPathUrl.standingOrder,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.standingOrder,
          widgetBuilder: widgetBuilders[RoutingPathName.standingOrder]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.createStandingOrder,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.standingOrderWrite),
              path: RoutingPathUrl.createStandingOrder,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.createStandingOrder,
              widgetBuilder:
                  widgetBuilders[RoutingPathName.createStandingOrder]!,
            ),
          ],
        ),
        EORoute(
          Icons.calendar_view_month_rounded,
          (_) => RoutingPathDisplayName.planner,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.plansView),
          path: RoutingPathUrl.planner,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.planner,
          widgetBuilder: widgetBuilders[RoutingPathName.planner]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.createPlan,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.plansWrite),
              path: RoutingPathUrl.createPlan,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.createPlan,
              widgetBuilder: widgetBuilders[RoutingPathName.createPlan]!,
            ),
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.editPlan,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.plansWrite),
              path: RoutingPathUrl.editPlan,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.editPlan,
              widgetBuilder: widgetBuilders[RoutingPathName.editPlan]!,
            ),
          ],
        ),
        EORoute(
          Icons.calendar_month,
          (_) => RoutingPathDisplayName.scheduler,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.schedulerView),
          path: RoutingPathUrl.scheduler,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.scheduler,
          widgetBuilder: widgetBuilders[RoutingPathName.scheduler]!,
        ),
        EORoute(
          Icons.location_searching_rounded,
          (_) => RoutingPathDisplayName.locateJob,
          isManuallyNavigable: false,
          section: kTransportSection,
          path: RoutingPathUrl.locateJob,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.locateJob,
          widgetBuilder: widgetBuilders[RoutingPathName.locateJob]!,
        ),
        EORoute(
          Icons.commute_sharp,
          (_) => RoutingPathDisplayName.assets,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.assetsView),
          path: RoutingPathUrl.assets,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.assets,
          widgetBuilder: widgetBuilders[RoutingPathName.assets]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.internalTrucks,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.internalTrucksView),
              path: RoutingPathUrl.internalTrucks,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.internalTrucks,
              widgetBuilder: widgetBuilders[RoutingPathName.internalTrucks]!,
              children: [
                EORoute(
                  Icons.logo_dev_outlined,
                  (_) => RoutingPathDisplayName.editTruck,
                  section: kTransportSection,
                  isAllowed: (context, route) =>
                      _isAllowed(context, UserPermissions.internalTrucksWrite),
                  path: '${RoutingPathUrl.editTruck}/:truckId',
                  selectedIcon: Icons.logo_dev,
                  name: RoutingPathName.editTruck,
                  widgetBuilder: widgetBuilders[RoutingPathName.editTruck]!,
                ),
              ],
            ),
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.managedTrucks,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.managedTrucksView),
              path: RoutingPathUrl.managedTrucks,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.managedTrucks,
              widgetBuilder: widgetBuilders[RoutingPathName.managedTrucks]!,
              children: [
                EORoute(
                  Icons.logo_dev_outlined,
                  (_) => RoutingPathDisplayName.addManagedTruck,
                  section: kTransportSection,
                  isAllowed: (context, route) =>
                      _isAllowed(context, UserPermissions.managedTrucksWrite),
                  path: RoutingPathUrl.addManagedTruck,
                  selectedIcon: Icons.logo_dev,
                  name: RoutingPathName.addManagedTruck,
                  widgetBuilder:
                      widgetBuilders[RoutingPathName.addManagedTruck]!,
                ),
                EORoute(
                  Icons.logo_dev_outlined,
                  (_) => RoutingPathDisplayName.editManagedTruck,
                  section: kTransportSection,
                  isAllowed: (context, route) =>
                      _isAllowed(context, UserPermissions.managedTrucksWrite),
                  path: '${RoutingPathUrl.editManagedTruck}/:truckId',
                  selectedIcon: Icons.logo_dev,
                  name: RoutingPathName.editManagedTruck,
                  widgetBuilder:
                      widgetBuilders[RoutingPathName.editManagedTruck]!,
                ),
              ],
            ),
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.containers,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.containersView),
              path: RoutingPathUrl.containers,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.containers,
              widgetBuilder: widgetBuilders[RoutingPathName.containers]!,
              children: [
                EORoute(
                  Icons.logo_dev_outlined,
                  (_) => RoutingPathDisplayName.addContainer,
                  section: kTransportSection,
                  isAllowed: (context, route) =>
                      _isAllowed(context, UserPermissions.containersWrite),
                  path: RoutingPathUrl.addContainer,
                  selectedIcon: Icons.logo_dev,
                  name: RoutingPathName.addContainer,
                  widgetBuilder: widgetBuilders[RoutingPathName.addContainer]!,
                ),
                EORoute(
                  Icons.logo_dev_outlined,
                  (_) => RoutingPathDisplayName.editContainer,
                  section: kTransportSection,
                  isAllowed: (context, route) =>
                      _isAllowed(context, UserPermissions.containersWrite),
                  path: '${RoutingPathUrl.editContainer}/:containerId',
                  selectedIcon: Icons.logo_dev,
                  name: RoutingPathName.editContainer,
                  widgetBuilder: widgetBuilders[RoutingPathName.editContainer]!,
                ),
              ],
            ),
            EORoute(
              Icons.map,
              (_) => RoutingPathDisplayName.assetLocator,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.assetLocatorView),
              path: RoutingPathUrl.assetLocator,
              selectedIcon: Icons.map,
              name: RoutingPathName.assetLocator,
              widgetBuilder: widgetBuilders[RoutingPathName.assetLocator]!,
            ),
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.trailers,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.trailersView),
              path: RoutingPathUrl.trailers,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.trailers,
              widgetBuilder: widgetBuilders[RoutingPathName.trailers]!,
            ),
          ],
        ),
        EORoute(
          Icons.people_sharp,
          (_) => RoutingPathDisplayName.customers,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.customerView),
          path: RoutingPathUrl.customers,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.customers,
          widgetBuilder: widgetBuilders[RoutingPathName.customers]!,
        ),
        EORoute(
          Icons.bar_chart,
          (_) => RoutingPathDisplayName.reports,
          section: kTransportSection,
          path: RoutingPathUrl.reports,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.reportsAction),
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.reports,
          widgetBuilder: widgetBuilders[RoutingPathName.reports]!,
          children: [
            EORoute(
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.viewReport,
              section: kTransportSection,
              isAllowed: (context, route) =>
                  _isAllowed(context, UserPermissions.reportsAction),
              path: RoutingPathUrl.viewReport,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.viewReport,
              widgetBuilder: widgetBuilders[RoutingPathName.viewReport]!,
            ),
          ],
        ),
        EORoute(
          Icons.report,
          (_) => RoutingPathDisplayName.needsContainer,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.needsContainerView),
          path: RoutingPathUrl.needsContainer,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.needsContainer,
          widgetBuilder: widgetBuilders[RoutingPathName.needsContainer]!,
        ),
        EORoute(
          Icons.settings_outlined,
          (_) => RoutingPathDisplayName.haulierSettings,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.haulierSettingsView),
          path: RoutingPathUrl.haulierSettings,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.haulierSettings,
          widgetBuilder: widgetBuilders[RoutingPathName.haulierSettings]!,
        ),
        EORoute(
          Icons.display_settings,
          (_) => RoutingPathDisplayName.userPreferences,
          section: kTransportSection,
          isAllowed: (context, route) =>
              _isAllowed(context, UserPermissions.userPreferencesView),
          path: RoutingPathUrl.userPreferences,
          selectedIcon: Icons.logo_dev,
          name: RoutingPathName.userPreferences,
          widgetBuilder: widgetBuilders[RoutingPathName.userPreferences]!,
          children: [
            EORoute(
              /// This is your module's top level route
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.schedulerPreferences,
              section: kTransportSection,
              path: RoutingPathUrl.schedulerPreferences,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.schedulerPreferences,

              widgetBuilder:
                  widgetBuilders[RoutingPathName.schedulerPreferences]!,
            ),
            EORoute(
              /// This is your module's top level route
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.dispatchYardSettings,
              section: kTransportSection,
              path: RoutingPathUrl.dispatchYardSettings,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.dispatchYardSettings,

              widgetBuilder:
                  widgetBuilders[RoutingPathName.dispatchYardSettings]!,
            ),
            EORoute(
              /// This is your module's top level route
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.managedThirdPartySettings,
              section: kTransportSection,
              path: RoutingPathUrl.managedThirdPartySettings,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.managedThirdPartySettings,

              widgetBuilder:
                  widgetBuilders[RoutingPathName.managedThirdPartySettings]!,
            ),
            EORoute(
              /// This is your module's top level route
              Icons.logo_dev_outlined,
              (_) => RoutingPathDisplayName.thirdPartySettings,
              section: kTransportSection,
              path: RoutingPathUrl.thirdPartySettings,
              selectedIcon: Icons.logo_dev,
              name: RoutingPathName.thirdPartySettings,

              widgetBuilder:
                  widgetBuilders[RoutingPathName.thirdPartySettings]!,
            ),
          ],
        ),
      ],
    ),
  ];

  static String kTransportSection = StringConstants.transport;

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(transportMenuItems);
    return registry;
  }

  static bool _isAllowed(BuildContext context, String permission) {
    return context.userHasPermission(permission);
  }

  static List<SingleChildWidget> providers = [
    Provider<SharedPreferencesService>(
      create: (context) {
        return SharedPreferencesService();
      },
    ),
    Provider<ScreenRefreshController>(
      create: (context) {
        return ScreenRefreshController();
      },
    ),
    Provider<ResilientHttpClient>(
      create: (context) {
        final config = Provider.of<AppConfig>(context, listen: false);
        return TransportResilientHttpClient().getClient(config);
      },
    ),
    Provider<ApiService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return ApiService(httpClient: httpClient);
      },
    ),
    Provider<VORService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return VORService(httpClient: httpClient);
      },
    ),

    Provider<SignalrService>(
      create: (context) {
        final config = Provider.of<AppConfig>(context, listen: false);
        return SignalrService(appConfig: config);
      },
    ),
    Provider<UserSettingsService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return UserSettingsService(httpClient: httpClient);
      },
    ),
    ChangeNotifierProvider<SchedulerPreferenceController>(
      create: (context) {
        final userprefService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        return SchedulerPreferenceController(userprefService);
      },
    ),
    Provider<HaulierSettingsService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return HaulierSettingsService(httpClient: httpClient);
      },
    ),
    Provider<HaulierService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return HaulierService(httpClient: httpClient);
      },
    ),
    ChangeNotifierProvider<DispatchYardsSearchController>(
      create: (context) {
        final userSettingsService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );

        return DispatchYardsSearchController(
          userSettingsService: userSettingsService,
        );
      },
    ),
    Provider<ManagedThirdPartySettingsDataSource>(
      create: (context) {
        final service = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        return ManagedThirdPartySettingsDataSource(
          userSettingsService: service,
        );
      },
    ),
    Provider<EmrQueryLayoutController<UserManagedHauliers>>(
      create: (context) {
        final dataSource = Provider.of<ManagedThirdPartySettingsDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<UserManagedHauliers>(
          dataSource: dataSource,
        );
      },
    ),
    ChangeNotifierProvider<ManagedThirdPartyHaulierSearchController>(
      create: (context) {
        final userSettingsService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        final dataSource = Provider.of<ManagedThirdPartySettingsDataSource>(
          context,
          listen: false,
        );

        return ManagedThirdPartyHaulierSearchController(
          userSettingsService: userSettingsService,
          dataSource: dataSource,
        );
      },
    ),
    // Third Party Settings Screen Providers
    Provider<ThirdPartySettingsDataSource>(
      create: (context) {
        final service = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        return ThirdPartySettingsDataSource(userSettingsService: service);
      },
    ),
    Provider<EmrQueryLayoutController<UserThirdPartyHauliers>>(
      create: (context) {
        final dataSource = Provider.of<ThirdPartySettingsDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<UserThirdPartyHauliers>(
          dataSource: dataSource,
        );
      },
    ),
    ChangeNotifierProvider<ThirdPartyHaulierSearchController>(
      create: (context) {
        final userSettingsService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        final dataSource = Provider.of<ThirdPartySettingsDataSource>(
          context,
          listen: false,
        );

        return ThirdPartyHaulierSearchController(
          userSettingsService: userSettingsService,
          dataSource: dataSource,
        );
      },
    ),
    // Haulier Settings Screen Providers
    Provider<HaulierSettingsDataSource>(
      create: (context) {
        final service = Provider.of<HaulierSettingsService>(
          context,
          listen: false,
        );
        return HaulierSettingsDataSource(haulierSettingsService: service);
      },
    ),
    Provider<EmrQueryLayoutController<HaulierSettings>>(
      create: (context) {
        final dataSource = Provider.of<HaulierSettingsDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<HaulierSettings>(
          dataSource: dataSource,
        );
      },
    ),
    ChangeNotifierProvider<HaulierSettingsController>(
      create: (context) {
        final haulierSettingsService = Provider.of<HaulierSettingsService>(
          context,
          listen: false,
        );
        final dataSource = Provider.of<HaulierSettingsDataSource>(
          context,
          listen: false,
        );

        return HaulierSettingsController(
          haulierSettingsService: haulierSettingsService,
          dataSource: dataSource,
        );
      },
    ),
    Provider<JobListService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return JobListService(httpClient: httpClient);
      },
    ),
    ChangeNotifierProvider<TruckJobInfoController>(
      create: (context) {
        final vorService = Provider.of<VORService>(context, listen: false);
        return TruckJobInfoController(vorService);
      },
    ),
    ChangeNotifierProvider<JobScheduleController>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);
        return JobScheduleController(jobListService: service);
      },
    ),
    Provider<JobListsDataSource>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);
        return JobListsDataSource(jobListService: service);
      },
    ),

    Provider<JobListSearchDataController>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        return JobListSearchDataController(
          service: service,
          haulierService: haulierService,
        );
      },
    ),
    Provider<JobListSearchFilterController>(
      create: (context) {
        final controller = Provider.of<JobListSearchDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return JobListSearchFilterController(
          dataController: controller,
          sharedPrefs,
        );
      },
    ),
    Provider<EmrQueryLayoutController<JobList>>(
      create: (context) {
        final dataSource = Provider.of<JobListsDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<JobListSearchFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<JobList>(
          dataSource: dataSource,
          filterController: filterController,
        );
      },
    ),
    ChangeNotifierProvider<JobCreateEditController>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);
        return JobCreateEditController(jobListService: service);
      },
    ),
    ChangeNotifierProvider<DeleteJobController>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);
        return DeleteJobController(jobListService: service);
      },
    ),
    Provider<CommonService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return CommonService(httpClient: httpClient);
      },
    ),
    Provider<ContainerService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return ContainerService(httpClient: httpClient);
      },
    ),
    Provider<NeedsContainerService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return NeedsContainerService(httpClient: httpClient);
      },
    ),
    Provider<NeedsContainerController>(
      create: (context) {
        final needsContainerService = Provider.of<NeedsContainerService>(
          context,
          listen: false,
        );
        final containerService = Provider.of<ContainerService>(
          context,
          listen: false,
        );
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        return NeedsContainerController(
          service: needsContainerService,
          containerService: containerService,
          commonService: commonService,
        );
      },
    ),
    Provider<NeedsContainerFilterController>(
      create: (context) {
        return NeedsContainerFilterController();
      },
    ),

    // Service Providers
    Provider<TruckService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return TruckService(httpClient: httpClient);
      },
    ),

    // Container providers
    Provider<ContainersDataSource>(
      create: (context) {
        final service = Provider.of<ContainerService>(context, listen: false);
        return ContainersDataSource(containerService: service);
      },
    ),
    Provider<ContainersDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        return ContainersDataController(service: service);
      },
    ),
    Provider<ContainersFilterController>(
      create: (context) {
        final controller = Provider.of<ContainersDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return ContainersFilterController(
          dataController: controller,
          sharedPrefs,
        );
      },
    ),

    Provider<EmrQueryLayoutController<Containers>>(
      create: (context) {
        final dataSource = Provider.of<ContainersDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<Containers>(dataSource: dataSource);
      },
    ),
    ChangeNotifierProvider<ContainerCreateEditController>(
      create: (context) {
        final containerService = Provider.of<ContainerService>(
          context,
          listen: false,
        );
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        final truckService = Provider.of<TruckService>(context, listen: false);
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        return ContainerCreateEditController(
          containerService: containerService,
          commonService: commonService,
          truckService: truckService,
          jobListService: jobListService,
        );
      },
    ),

    // Common Asset Locator Service (shared by container, trailer)
    Provider<CommonAssetLocatorService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return CommonAssetLocatorService(httpClient: httpClient);
      },
    ),

    // Container Locator providers
    Provider<ContainerLocatorDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        return ContainerLocatorDataController(service: service);
      },
    ),
    // Trucks Locator Service
    Provider<TrucksLocatorService>(
      create: (context) {
        final commonService = Provider.of<CommonAssetLocatorService>(
          context,
          listen: false,
        );
        return TrucksLocatorService(apiService: commonService.apiService);
      },
    ),

    ChangeNotifierProvider<ContainerLocatorController>(
      create: (context) {
        final service = Provider.of<CommonAssetLocatorService>(
          context,
          listen: false,
        );
        return ContainerLocatorController(service: service);
      },
    ),

    Provider<ContainerLocatorFilterController>(
      create: (context) {
        final dataController = Provider.of<ContainerLocatorDataController>(
          context,
          listen: false,
        );
        final locatorController = Provider.of<ContainerLocatorController>(
          context,
          listen: false,
        );
        return ContainerLocatorFilterController(
          dataController: dataController,
          eventBlockerRegistry: locatorController.eventBlockerRegistry,
        );
      },
    ),

    // Trailer Locator providers
    Provider<TrailerLocatorDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        return TrailerLocatorDataController(service: service);
      },
    ),
    ChangeNotifierProvider<TrailerLocatorController>(
      create: (context) {
        final service = Provider.of<CommonAssetLocatorService>(
          context,
          listen: false,
        );
        return TrailerLocatorController(service: service);
      },
    ),
    Provider<TrailerLocatorFilterController>(
      create: (context) {
        final dataController = Provider.of<TrailerLocatorDataController>(
          context,
          listen: false,
        );
        final locatorController = Provider.of<TrailerLocatorController>(
          context,
          listen: false,
        );
        return TrailerLocatorFilterController(
          dataController: dataController,
          eventBlockerRegistry: locatorController.eventBlockerRegistry,
        );
      },
    ),

    // Truck Locator providers
    Provider<TruckLocatorDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        return TruckLocatorDataController(service: service);
      },
    ),
    ChangeNotifierProvider<TruckLocatorController>(
      create: (context) {
        final service = Provider.of<TrucksLocatorService>(
          context,
          listen: false,
        );
        final commonService = Provider.of<CommonAssetLocatorService>(
          context,
          listen: false,
        );
        return TruckLocatorController(
          service: service,
          commonService: commonService,
        );
      },
    ),
    Provider<TruckLocatorFilterController>(
      create: (context) {
        final dataController = Provider.of<TruckLocatorDataController>(
          context,
          listen: false,
        );
        final preferencesService = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        final locatorController = Provider.of<TruckLocatorController>(
          context,
          listen: false,
        );
        return TruckLocatorFilterController(
          dataController: dataController,
          preferencesService: preferencesService,
          eventBlockerRegistry: locatorController.eventBlockerRegistry,
        );
      },
    ),

    // Trailer providers
    Provider<TrailerService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return TrailerService(httpClient: httpClient);
      },
    ),
    Provider<TrailerDataSource>(
      create: (context) {
        final service = Provider.of<TrailerService>(context, listen: false);
        return TrailerDataSource(trailerService: service);
      },
    ),
    Provider<TrailerDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        return TrailerDataController(service: service);
      },
    ),
    Provider<TrailerFilterController>(
      create: (context) {
        final controller = Provider.of<TrailerDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return TrailerFilterController(dataController: controller, sharedPrefs);
      },
    ),
    Provider<EmrQueryLayoutController<TransportTrailer>>(
      create: (context) {
        final dataSource = Provider.of<TrailerDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<TransportTrailer>(
          dataSource: dataSource,
        );
      },
    ),
    // Truck providers
    Provider<TruckDataSource>(
      create: (context) {
        final service = Provider.of<TruckService>(context, listen: false);
        return TruckDataSource(truckService: service);
      },
    ),
    Provider<TruckDataController>(
      create: (context) {
        final service = Provider.of<CommonService>(context, listen: false);
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        return TruckDataController(
          service: service,
          haulierService: haulierService,
        );
      },
    ),
    Provider<TruckFilterController>(
      create: (context) {
        final controller = Provider.of<TruckDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return TruckFilterController(dataController: controller, sharedPrefs);
      },
    ),
    Provider<EmrQueryLayoutController<TransportTruck>>(
      create: (context) {
        final dataSource = Provider.of<TruckDataSource>(context, listen: false);
        return EmrQueryLayoutController<TransportTruck>(dataSource: dataSource);
      },
    ),
    ChangeNotifierProvider<TruckCreateEditController>(
      create: (context) {
        final truckService = Provider.of<TruckService>(context, listen: false);
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        return TruckCreateEditController(
          truckService: truckService,
          commonService: commonService,
          haulierService: haulierService,
        );
      },
    ),
    ChangeNotifierProvider<InternalTruckController>(
      create: (context) {
        final truckService = Provider.of<TruckService>(context, listen: false);
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        final vorService = Provider.of<VORService>(context, listen: false);
        return InternalTruckController(
          truckService: truckService,
          vorService: vorService,
          commonService: commonService,
        );
      },
    ),

    // Standing Order Providers
    Provider<StandingOrderService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return StandingOrderService(httpClient: httpClient);
      },
    ),
    Provider<StandingOrderDataSource>(
      create: (context) {
        final service = Provider.of<StandingOrderService>(
          context,
          listen: false,
        );
        return StandingOrderDataSource(standingOrderService: service);
      },
    ),
    Provider<StandingOrderDataController>(
      create: (context) {
        final standingOrderService = Provider.of<StandingOrderService>(
          context,
          listen: false,
        );
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        return StandingOrderDataController(
          standingOrderService: standingOrderService,
          jobListService: jobListService,
        );
      },
    ),
    Provider<StandingOrderFilterController>(
      create: (context) {
        final controller = Provider.of<StandingOrderDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return StandingOrderFilterController(
          dataController: controller,
          sharedPrefs,
        );
      },
    ),
    Provider<EmrQueryLayoutController<StandingOrder>>(
      create: (context) {
        final dataSource = Provider.of<StandingOrderDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<StandingOrderFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<StandingOrder>(
          dataSource: dataSource,
          filterController: filterController,
        );
      },
    ),
    ChangeNotifierProvider<StandingOrderCreateEditController>(
      create: (context) {
        final standingOrderService = Provider.of<StandingOrderService>(
          context,
          listen: false,
        );
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        return StandingOrderCreateEditController(
          standingOrderService: standingOrderService,
          jobListService: jobListService,
        );
      },
    ),
    Provider<JobTrackingService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return JobTrackingService(httpClient: httpClient);
      },
    ),
    ChangeNotifierProvider<JobTrackingController>(
      create: (context) {
        final jobTrackingService = Provider.of<JobTrackingService>(
          context,
          listen: false,
        );
        return JobTrackingController(service: jobTrackingService);
      },
    ),
    // Customer Screen Providers
    Provider<CustomerService>(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        return CustomerService(apiService: apiService);
      },
    ),
    Provider<CustomerDataSource>(
      create: (context) {
        final service = Provider.of<CustomerService>(context, listen: false);
        return CustomerDataSource(customerService: service);
      },
    ),
    Provider<EmrQueryLayoutController<CustomerDetail>>(
      create: (context) {
        final dataSource = Provider.of<CustomerDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<CustomerDetail>(dataSource: dataSource);
      },
    ),
    Provider<ReportsService>(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        return ReportsService(apiService: apiService);
      },
    ),
    ChangeNotifierProvider<ReportsController>(
      create: (context) {
        final reportService = Provider.of<ReportsService>(
          context,
          listen: false,
        );
        return ReportsController(reportsService: reportService);
      },
    ),
    ChangeNotifierProvider<JobActionController>(
      create: (context) {
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        final apiService = Provider.of<ApiService>(context, listen: false);
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        return JobActionController(commonService, apiService, jobListService);
      },
    ),
    ChangeNotifierProvider<MoveOutstandingJobController>(
      create: (context) {
        final jobService = Provider.of<JobListService>(context, listen: false);

        return MoveOutstandingJobController(jobService);
      },
    ),
    Provider<SchedulerDataController>(
      create: (context) {
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        final truckService = Provider.of<TruckService>(context, listen: false);
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        final apiService = Provider.of<ApiService>(context, listen: false);
        final userSettingsService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        return SchedulerDataController(
          apiService,
          commonService,
          jobListService,
          truckService,
          userSettingsService,
        );
      },
    ),
    ChangeNotifierProvider<UnscheduleController>(
      create: (context) {
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        final signalRService = Provider.of<SignalrService>(
          context,
          listen: false,
        );
        final dataController = Provider.of<SchedulerDataController>(
          context,
          listen: false,
        );
        final screenRefreshController = Provider.of<ScreenRefreshController>(
          context,
          listen: false,
        );
        return UnscheduleController(
          dataController,
          sharedPrefs,
          signalRService,
          screenRefreshController,
        );
      },
    ),
    Provider<SchedulerFilterController>(
      create: (context) {
        final dataController = Provider.of<SchedulerDataController>(
          context,
          listen: false,
        );
        return SchedulerFilterController(dataController: dataController);
      },
    ),
    ListenableProvider<SchedulerController>(
      create: (context) {
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        final signalRService = Provider.of<SignalrService>(
          context,
          listen: false,
        );
        final dataController = Provider.of<SchedulerDataController>(
          context,
          listen: false,
        );
        final filterController = Provider.of<SchedulerFilterController>(
          context,
          listen: false,
        );
        final screenRefreshController = Provider.of<ScreenRefreshController>(
          context,
          listen: false,
        );

        final unscheduleController = Provider.of<UnscheduleController>(
          context,
          listen: false,
        );
        return SchedulerController(
          filterController,
          dataController,
          sharedPrefs,
          unscheduleController,
          signalRService,
          screenRefreshController,
        );
      },
    ),
    Provider<PlanService>(
      create: (context) {
        final httpClient = Provider.of<ResilientHttpClient>(
          context,
          listen: false,
        );
        return PlanService(httpClient: httpClient);
      },
    ),
    ChangeNotifierProvider<HaulierReportController>(
      create: (context) {
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        final planService = Provider.of<PlanService>(context, listen: false);
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        return HaulierReportController(
          haulierService: haulierService,
          planService: planService,
          commonService: commonService,
        );
      },
    ),
    ChangeNotifierProvider<OpenJobsReportController>(
      create: (context) {
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        return OpenJobsReportController(
          haulierService: haulierService,
          commonService: commonService,
        );
      },
    ),
    ChangeNotifierProvider<YardReportController>(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );
        return YardReportController(
          apiService: apiService,
          commonService: commonService,
        );
      },
    ),
    Provider<PlannerDataController>(
      create: (context) {
        final jobService = Provider.of<JobListService>(context, listen: false);
        final userSettingService = Provider.of<UserSettingsService>(
          context,
          listen: false,
        );
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        return PlannerDataController(
          jobService: jobService,
          userSettingsService: userSettingService,
          haulierService: haulierService,
        );
      },
    ),
    ChangeNotifierProvider<ClonePlanController>(
      create: (context) {
        final jobService = Provider.of<JobListService>(context, listen: false);
        final planService = Provider.of<PlanService>(context, listen: false);
        return ClonePlanController(
          jobListservice: jobService,
          planService: planService,
        );
      },
    ),
    ChangeNotifierProvider<SchedulePlanController>(
      create: (context) {
        final planService = Provider.of<PlanService>(context, listen: false);
        final jobService = Provider.of<JobListService>(context, listen: false);
        final haulierService = Provider.of<HaulierService>(
          context,
          listen: false,
        );
        return SchedulePlanController(
          planService: planService,
          jobService: jobService,
          haulierService: haulierService,
        );
      },
    ),
    ChangeNotifierProvider<PlannerController>(
      create: (context) {
        final jobService = Provider.of<JobListService>(context, listen: false);
        final planService = Provider.of<PlanService>(context, listen: false);
        final schedulePlanController = Provider.of<SchedulePlanController>(
          context,
          listen: false,
        );
        return PlannerController(
          joblistservice: jobService,
          planService: planService,
          schedulePlanController: schedulePlanController,
        );
      },
    ),
    Provider<PlannerFilterController>(
      create: (context) {
        final controller = Provider.of<PlannerDataController>(
          context,
          listen: false,
        );
        final sharedPrefs = Provider.of<SharedPreferencesService>(
          context,
          listen: false,
        );
        return PlannerFilterController(dataController: controller, sharedPrefs);
      },
    ),
    Provider<TotalJobsFilterController>(
      create: (context) {
        final controller = Provider.of<PlannerDataController>(
          context,
          listen: false,
        );
        return TotalJobsFilterController(dataController: controller);
      },
    ),
    Provider<PlanListDataSource>(
      create: (context) {
        final service = Provider.of<PlanService>(context, listen: false);
        return PlanListDataSource(planService: service);
      },
    ),
    Provider<EmrQueryLayoutController<PlanResponse>>(
      create: (context) {
        final dataSource = Provider.of<PlanListDataSource>(
          context,
          listen: false,
        );
        final filterController = Provider.of<PlannerFilterController>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<PlanResponse>(
          dataSource: dataSource,
          filterController: filterController,
        );
      },
    ),
    Provider<TotalJobsDataSource>(
      create: (context) {
        final service = Provider.of<PlanService>(context, listen: false);
        final filterController = Provider.of<TotalJobsFilterController>(
          context,
          listen: false,
        );
        return TotalJobsDataSource(
          planService: service,
          toalJobsFilterController: filterController,
        );
      },
    ),
    Provider<EmrQueryLayoutController<PlanHaulierJob>>(
      create: (context) {
        final dataSource = Provider.of<TotalJobsDataSource>(
          context,
          listen: false,
        );
        return EmrQueryLayoutController<PlanHaulierJob>(dataSource: dataSource);
      },
    ),
    ChangeNotifierProvider<JobQuickCloneController>(
      create: (context) {
        final jobListService = Provider.of<JobListService>(
          context,
          listen: false,
        );
        return JobQuickCloneController(jobListService: jobListService);
      },
    ),
    Provider<DriverEventService>(
      create: (context) {
        final service = Provider.of<ApiService>(context, listen: false);
        return DriverEventService(apiService: service);
      },
    ),
    ChangeNotifierProvider<DriverEventController>(
      create: (context) {
        final service = Provider.of<DriverEventService>(context, listen: false);
        final commonService = Provider.of<CommonService>(
          context,
          listen: false,
        );

        return DriverEventController(
          driverEventService: service,
          commonService: commonService,
        );
      },
    ),
    ChangeNotifierProvider<CloneJobsForwardController>(
      create: (context) {
        final service = Provider.of<JobListService>(context, listen: false);

        return CloneJobsForwardController(jobListService: service);
      },
    ),
  ];
}
